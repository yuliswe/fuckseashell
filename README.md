# FuckSeashell - A Tutorial on Using Clang and VSC instead of Seashell for CS136 assignments

# You have been warned!

The techniques described in this tutorial are not officially endorsed by CS136
course staffs. There is always a chance that the assignment you completed using
our techniques will not compile, or will fail the public tests when submitted to
Marmoset/Seashell. ___Therefore, always submit your final assignment via
Seashell, by copying & pasting the code you have written to Seashell, and click
submit. Check the result and make sure everything passes.___

# Preface

It is well known that Seashell is unusable in a slow internet environment. This
tutorial will guide you through how to use Clang and Visual Studio Code (VSC) to
write assignments for the CS136 course that is offered at the University of
Waterloo.

Note that the techniques in this tutorial involes advanced knowledge that will
be covered in CS246, a course that is usually taken by students immediately
after CS136. By following the tutorial you will learn the following knowledge:

* How to use an Integrated Development Environment (IDE) for software
  engineering
* How to use Terminal and the Bash shell like a professional software developer
* The concept of compilation and how to compile a program with the Clang
  compiler
* The concept of file input/output (IO) on your operating system (OS)
* (Optional) How to use Docker or Windows Sub-linux System 2 (WSL2)

# Setup Guide

## Info for Linux/MacOS Users

If you are running Linux/MacOS and wish to write a program in C, you have two
options:

1. Install all tools that are required on your local machine and start
   programming. To use this method, follow the guide on [How to Install
   Development Tools on Linux/MacOS](how-to-macos.md)
2. (Preferred) Use Docker and load our fuckseashell docker image, which include
   all tools that you need to program in C. To use this method, follow the guide
   on [How to Install and Use Docker for Software Development](how-to-docker.md)

## Info for Windows Users

If you are running Windows and wish to write a program in C, you have three
options:

1. Use Microsoft's Visual Studio (won't be covered in this tutorial)
2. (Preferred) Use Docker and load our fuckseashell docker image, which include
   all tools that you need to program in C. To use this method, follow the guide
   on [How to Install and Use Docker for Software Development](how-to-docker.md)
3. Use Windows Sub-linux System 2 (WSL2) for Windows 10
