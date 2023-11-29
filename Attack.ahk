#Requires AutoHotkey v2.0
#SingleInstance Off

SendMode "Event"

x := 0
Loop {
  MouseClick "Left"
  Sleep 50
  x += 1
} Until x = 25
