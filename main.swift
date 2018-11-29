#! /usr/bin/swift

import Darwin
import Cocoa

func die(_ msg: String) {
    fputs("\(msg)\n", stderr)
    exit(1)
}

let name = CommandLine.arguments[0]

if CommandLine.argc == 3 {
    let icon_file_name = CommandLine.arguments[2]

    if let icon = Cocoa.NSImage.init(contentsOfFile: icon_file_name) {
        NSWorkspace.shared.setIcon(icon, forFile: CommandLine.arguments[1])
    }
    else {
        die("Failed to read icon file '\(icon_file_name)'")
    }
}
else {
    die("Usage: \(name) FILE ICON_FILE")
}
