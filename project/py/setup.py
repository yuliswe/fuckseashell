import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="fuckseashell",  # Replace with your own username
    version="0.0.2",
    author="Example Author",
    author_email="ylilarry@gmail.com",
    description="Tool Kits for Using Clang and VSC instead of Seashell for CS136 assignments",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/ylilarry/fuckseashell",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.6",
    entry_points={
        "console_scripts": [
            "download-assignment=fuckseashell.download_assignment:main",
            "extract-assignment=fuckseashell.extract_assignment:main",
            "fsrun=fuckseashell.fsrun:main",
            "fstest=fuckseashell.fstest:main",
        ]
    },
)