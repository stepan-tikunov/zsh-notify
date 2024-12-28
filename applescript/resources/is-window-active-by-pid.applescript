#!/usr/bin/osascript -ss

on run argv
    set targetPID to item 1 of argv

    tell application "System Events"
        set appProcess to first process whose unix id is targetPID
    end tell

    tell application (name of appProcess)
        if frontmost is not true then error "Window with pid " & targetPID & " is not the frontmost application"
    end tell
end run

