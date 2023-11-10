These instructions are for setting up some simple Twitch chat integration for Cyberpunk 2077, to allow viewers to control the game via chat commands created in [Firebot](https://firebot.app/). This is aimed at Twitch streamers using and familiar with Firebot.

## Usage

Available commands:

- !w - Walk forwards
- !sprint - Sprint forwards
- !s - Walk backwards
- !a/!left - Strafe left (on foot) or turn left (in vehicle)
- !d/!right - Strafe right (on foot) or turn right (in vehicle)
- !jump/!space - Jump (on foot)
- !heal/!x - Heal
- !grenade - Throw grenade (on foot)
- !turn - Turn to a random direction (on foot)

To enable the commands, use !enablechaos, and disable with !disablechaos (streamer/moderator only).

## Setup

Create commands:

- Trigger: !w
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: w
    - Secs: 3

- Trigger: !sprint
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: w
    - Modifiers: Shift
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
    - Args: /c C:\path\to\TurnRandom.ahk (see [TurnRandom.ahk](TurnRandom.ahk))

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
