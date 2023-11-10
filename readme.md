Create commands:

- Trigger: !w
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: w
    - Secs: 3

- Trigger: !s
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: s
    - Secs: 3

- Trigger: !a
- Alias: !left
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: a
    - Secs: 1

- Trigger: !d
- Alias: !right
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: d
    - Secs: 1

- Trigger: !jump
- Alias: !space
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: space

- Trigger: !heal
- Alias: !x
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: x

- Trigger: !grenade
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: middlemouse

- Trigger: !turn
- Effects:
  - Run Program
    - File: cmd.exe
    - Args: /c C:\path\to\TurnRandom.ahk

The above !turn command requires AutoHotKey to be installed, see https://www.autohotkey.com/

Edit each of the above commands and add:

- Restrictions:
  - Custom Variable
    - Name: chaos
    - Value: true

Create more commands:

- Trigger: !enablechaos
- Restrictions:
  - Permissions
    - Mode: Roles
    - Roles: Streamer, Moderator
- Effects:
  - Custom Variable
    - Name: chaos
    - Value: true

- Trigger: !disablechaos
- Restrictions:
  - Permissions
    - Mode: Roles
    - Roles: Streamer, Moderator
- Effects:
  - Custom Variable
    - Name: chaos
    - Value: false
