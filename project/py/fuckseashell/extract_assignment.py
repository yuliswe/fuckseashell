#!/usr/bin/env python3.8

import os
from subprocess import DEVNULL, run
from pathlib import Path
import click
import re
from zipfile import ZipFile
from textwrap import dedent


@click.command()
@click.argument("assignment", type=str)
def main(assignment):
    """
    Unzip the A#-seashell.zip file in /assignments. The Assignment argument
    should be in the form of A#, where # is the assignment number. For example,
    extract-assignment a3 -- this downloads A3-seashell.zip.

    Extracted .zip files are placed in /assignments.
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
    asn_num = matcher.group(1)
    p_assignments = Path("/assignments")
    p_assignment_zip = p_assignments / f"A{asn_num}-seashell.zip"
    if not p_assignment_zip.exists():
        exit(f"{p_assignment_zip} does not exist.")

    asn_num = matcher.group(1)
    extract_to = p_assignments / f"A{asn_num}"

    print(f"Extracting to {extract_to}.")
    with ZipFile(p_assignment_zip, "r") as zip_ref:
        zip_ref.extractall(extract_to)
