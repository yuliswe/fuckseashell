# How to Use Visual Studio Code (VSC) to Develop C Code

To download and install VSC, visit Microsoft's official website:
https://code.visualstudio.com

After opening VSC, you'll want to install some extensions. See the documentation
on [how to install VSC
extensions](https://code.visualstudio.com/docs/editor/extension-gallery), or
[this vedio explaining what are VSC
extensions](https://code.visualstudio.com/learn/get-started/extensions).


# Required VSC Extensions for CS136

1. Extension: [Remote -
    Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
    -- If you are using our [fuckseashell Docker image](how-to-docker.md), you
    must install this extension.

2.  Extension: [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
   -- If you are not using our fuckeashell Docker image and you want to develop
   locally on your computer, you should install this extension.


# Info for Docker users

After loading the fuckseashell Docker image as described in [How to Install and
Use Docker for Software Development](how-to-docker.md), you need to attach VSC
to the fuckseashell container.

First, open the `Command Palette`. On Windows, press `Ctrl+Shift+P`. On MacOS,
press `Shift+Comand+P`. This will bring up the `Command Palette`. Then type in
`Remote-Containers: Attach to Running Container`. Then select `fuckseashell`,
and VSC will restart after attached to the container.

After VSC is restarted and attached to the fuckseashell container, open the
`/assignments` directory and you are all set. To open the `/assignments`
directory, on Windows, press `Ctrl+O`. On MacOS, press `Command+O`. Then Type in
`/assignments` and hit enter.

The next step is to learn some Terminal basics. To open the VSC Terminal, on
Windows, press `` Ctrl+` ``. On MacOS, press `` Command+` ``. All tools such as
`fsrun`, and `fstest` are already installed.

See this guide on [How to use these tools such as `fstest` and `fsrun`](how-to-tools.md).
