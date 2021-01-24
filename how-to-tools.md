# How to Use Our Tools

After installing the [fuckseashell python
package](https://pypi.org/project/fuckseashell/), the following command-line
tools will become available in your terminal. If you are using our [fuckseashell
Docker image](how-to-docker.md), then the python package is already installed
for you.

* fsrun - Compile C files in the current directory and run the main function
* fstest - Compile C files in the current directory and run cs136's IO tests
* download-assignment - Download assignments from CS136's' website
* extract-assignment - Extract downloaded assignments from CS136's' website

# download-assignment and extract-assignment

These tools download and extract the Ax-seashell.zip assignment package from
CS136's website. To use the tools, you need to set an environment variable
`SEASHELL_ASSIGNMENT_DIR`, which specifies where you want the assignment code to
be stored. To learn how to set an environment variable for your Bash shell, see
our tutorial on [How to Use Terminal and Bash](how-to-terminal.md).

If you are using our [fuckseashell Docker image](how-to-docker.md), then
`SEASHELL_ASSIGNMENT_DIR` is already set for you. You can confirm by typing in
the VSC terminal:
```
# should print /assignments
echo $SEASHELL_ASSIGNMENT_DIR
```

After `SEASHELL_ASSIGNMENT_DIR` is set to the path to the assignments directory,
you can type in the terminal:

```
# this downloads A1-seashell.zip to your assignment directory
download-assignment a1

# this extracts the A1-seashell.zip inside your your assignment directory
extract-assignment a1
```

# fsrun and fstest

These tools compile and test your C program. To use the tools, you need to set
an environment variable `SEASHELL_CLANG_PATH`, which specifies which `clang`
compiler to use on your system. To learn how to set an environment variable for
your Bash shell, see our tutorial on [How to Use Terminal and
Bash](how-to-terminal.md).

If you are using our [fuckseashell Docker image](how-to-docker.md), then
`SEASHELL_ASSIGNMENT_DIR` is already set for you. You can confirm by typing in
the VSC terminal:
```
# should print clang-11
echo $SEASHELL_CLANG_PATH
```

Then, `cd` into the **question directory**, for example, to run and test
`A2/q1a`, type in the VSC terminal:
```
cd A2/q1a

# compile and main.c program
fsrun

# compile and run .in/.expect tests
fstest
```

The output would be something like:
```
Compiling c files:
  /assignments/A2/A2/q2a/main.c
Compilation succeed.
Test started.
--------------------------------
Testing "public.in".
Failed: the actual output is different from the expected output.
----------------
Expected output:
1
3
6
6
3
1

----------------
Actual output:

----------------
A visual differencing is generated here:
1                                                             <
3                                                             <
6                                                             <
6                                                             <
3                                                             <
1                                                             <

----------------
"public.in" failed.
================================
Test failed.
#total: 1
#failed: 1
================================
```