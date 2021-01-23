#!/usr/bin/env python3.8

import os
from subprocess import DEVNULL, run
from pathlib import Path
import click
import re
from textwrap import dedent
import requests
from fuckseashell import env
from zipfile import ZipFile, is_zipfile


@click.command()
@click.argument("assignment", type=str)
def main(assignment):
    """
    Download assignment from CS136's' website. The Assignment argument should be
    in the form of A#, where # is the assignment number. For example,
    download-assignment a3 -- this downloads A3-seashell.zip.

    Downloaded .zip files are placed in /assignments.
    """
    matcher = re.match(r"a(\d+)", assignment, flags=re.IGNORECASE)
    if not matcher:
        exit(
            dedent(
                """
                Specify A#, for instance, a3 to download a3-seashell.zip from
                CS136's course website.
                """
            )
        )
    assignment_num = matcher.group(1)
    url = f"https://www.student.cs.uwaterloo.ca/~cs136/assignment_skeletons/A{assignment_num}-seashell.zip"
    print(f"Downloading from {url}")
    p_assignment_zip = Path("/assignments") / f"A{assignment_num}-seashell.zip"
    if p_assignment_zip.exists():
        exit(f"{p_assignment_zip} already exists.")
    response = requests.get(url, allow_redirects=True)
    p_assignment_zip.write_bytes(response.content)
    if not is_zipfile(p_assignment_zip):
        print(f"The downloaded content does not appear to be a zip file.")
        p_assignment_zip.unlink()
        exit(f"Failed to download.")
