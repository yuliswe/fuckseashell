#!/usr/bin/env python3.8

import os
from subprocess import run
from pathlib import Path
import click
import re
from zipfile import ZipFile
from textwrap import dedent, indent
from tempfile import TemporaryDirectory, NamedTemporaryFile
from fuckseashell.fsrun import compile_cwd_question, run_with_asan
from difflib import HtmlDiff


def print_dedent(txt):
    print(dedent(txt))


def print_divider(level):
    divider = [
        "=" * 32,
        "-" * 32,
        "-" * 16,
    ]
    print(divider[level])


def check_expect_io(exe, input, expect):
    proc = run_with_asan(exe, input=input, text=True, check=False, capture_output=True)
    actual = proc.stdout
    if proc.returncode != 0:
        print(f"Failed: Program exited with code {proc.returncode}.")
        print("Output:")
        print(proc.stdout)
        print("Error:")
        print(proc.stderr)
        return False
    if expect == actual:
        return True
    else:
        with NamedTemporaryFile(mode="wt", delete=False) as outfile:
            outfile.write(actual)
        with NamedTemporaryFile(mode="wt", delete=False) as exfile:
            exfile.write(expect)
        diff = run(
            ["diff", "-y", "--minimal", exfile.name, outfile.name],
            capture_output=True,
            text=True,
        )
        # html = HtmlDiff().make_file(expect.splitlines(), actual.splitlines())
        # tmpfile = NamedTemporaryFile(delete=False, suffix=".html")
        # tmpfile.write(html.encode("utf-8"))
        print("Failed: the actual output is different from the expected output.")
        print_divider(2)
        print("Expected output:")
        print(expect)
        if expect and expect[-1] != "\n":
            print("(No newline at the end of file.)")
        print_divider(2)
        print("Actual output:")
        print(actual)
        if actual and actual[-1] != "\n":
            print("(No newline at the end of file.)")
        print_divider(2)
        print("A visual differencing is generated here:")
        print(diff.stdout)
        print_divider(2)
        return False


@click.command()
def main():
    """
    Compile C files in the current directory and run IO tests.
    """
    test_dir = Path.cwd() / "tests"

    if not test_dir.exists():
        exit("The ./tests directory is not found.")

    executable = compile_cwd_question()

    print("Test started.")

    in_files = set(test_dir.glob("*.in"))
    ex_files = set(test_dir.glob("*.expect"))

    failure_detected = 0
    error_detected = 0

    try:
        for inf in in_files:
            print_divider(1)
            print(f'Testing "{inf.name}".')
            exf = inf.with_suffix(".expect")
            if not exf in ex_files:
                print(f'Error: "{inf.stem}" has no matching "{exf.stem}" file.')
                error_detected += 1
                continue
            if check_expect_io(
                executable, input=inf.read_text(), expect=exf.read_text()
            ):
                print(f'"{inf.name}" passed.')
                continue
            else:
                failure_detected += 1
                print(f'"{inf.name}" failed.')
                continue
    except Exception:
        print(
            dedent(
                """
                Unable to complete testing. An unexpected error happened. Please
                report this issue to us.
                """
            )
        )
        raise
    else:
        if failure_detected == 0 and error_detected == 0:
            print_divider(0)
            print(f"All {len(in_files)} tests passed.")
            print_divider(0)
        else:
            print_divider(0)
            print("Test failed.")
            print(f"#total: {len(in_files)}")
            print(f"#failed: {failure_detected + error_detected}")
            print_divider(0)
