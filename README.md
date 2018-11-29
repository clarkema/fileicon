# fileicon

*fileicon* is a tiny Swift script that makes it easy to set custom icons
on files and directories in macOS.

It's designed primarily for use in automated software build and
packaging workflows.

## Installation

If you want a compiled version, run `make` and copy the resulting
`fileicon` binary to somewhere in your `$PATH`.

Alternatively, if you want to use *fileicon* in your build process without
having to deal with compiling it, you can just rename `main.swift` to
`fileicon`, copy it into your source tree and take advantage of Swift's
`#!` support by running it directly as a script.

## Usage

```
$ fileicon set FILE-PATH ICON-PATH
```

## Limitations

*fileicon* currently does not offer any way to remove an icon once it's been
set.  There is no equivalent call in the Cocoa API to do this; it would
require direct manipulation of the file's resource fork.
