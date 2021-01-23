import os
from pathlib import Path
from textwrap import dedent


def get_env(name):
    if name in os.environ:
        return os.environ[name]
    else:
        exit(
            dedent(
                f"""
                {name} is not found in environment variables. Please set it to
                the path of the directory that contains assignment zip files.
                """
            )
        )


ASSIGNMENT_DIR = Path(get_env("SEASHELL_ASSIGNMENT_DIR"))
CLANG_PATH = Path(get_env("SEASHELL_CLANG_PATH"))

checked = False
if not checked:
    checked = True
    if not ASSIGNMENT_DIR.exists():
        raise FileNotFoundError(f"{ASSIGNMENT_DIR} does not exist.")
