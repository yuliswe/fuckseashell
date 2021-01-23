#!/usr/bin/env python3.8

import os
from subprocess import DEVNULL, run, CalledProcessError
from pathlib import Path
import click
import re
from zipfile import ZipFile
from textwrap import dedent, indent
from tempfile import TemporaryDirectory
from fuckseashell.env import CLANG_PATH


def run_clang(object_files):
    headers = []
    common = Path.cwd().parent / "common"
    if common.exists():
        headers.append(f"-I{common}")
    ll_files = common.glob("*.ll")
    out = Path("/tmp/a.out")
    with TemporaryDirectory() as tmpdir:
        run(
            [
                CLANG_PATH,
                "-fsanitize=address",
                "-fsanitize-address-use-after-scope",
                "-Wall",
                "-Werror",
                "--target=x86_64-unknown-linux-gnu",
                "-o",
                out,
                *headers,
                *object_files,
                *ll_files,
            ],
            cwd=tmpdir,
            check=True,
            text=True,
        )
        return out


def compile_cwd_question():
    c_files = list(Path.cwd().glob("*.c"))
    if not c_files:
        exit("No .c files are found in the current directory.")
    print("Compiling c files:")
    for c in c_files:
        print(f"  {c}")
    try:
        exe = run_clang(c_files)
        print("Compilation succeed.")
        return exe
    except CalledProcessError:
        exit("Failed to compile.")


def run_with_asan(executable, **run_kwargs):
    env = os.environ
    env.update(run_kwargs.pop("env", {}))
    env.update(
        {
            "ASAN_OPTIONS": "detect_stack_use_after_return=1,detect_leaks=1,check_initialization_order=1"
        }
    )
    return run([executable], env=env, **run_kwargs)


@click.command()
def main():
    """
    Compile C files in the current directory and run the main function.
    """
    executable = compile_cwd_question()
    print("Program is running.")
    print("===================")
    run_with_asan(executable)
