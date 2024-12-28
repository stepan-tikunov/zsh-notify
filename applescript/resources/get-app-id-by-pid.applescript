#!/usr/bin/osascript

on run argv
    set targetPID to item 1 of argv

    tell application "System Events"
        return bundle identifier of first process whose unix id is targetPID
    end tell
end run

