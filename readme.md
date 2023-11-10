These instructions are for setting up some simple Twitch chat integration for Cyberpunk 2077, to allow viewers to control the game via chat commands created in [Firebot](https://firebot.app/). This is aimed at Twitch streamers using and familiar with Firebot.

## Usage

Available commands:

- !w - Walk/drive forwards
- !sprint - Sprint forwards (on foot)
- !s - Walk/drive backwards
- !a/!left - Strafe left (on foot) or turn left (in vehicle)
- !d/!right - Strafe right (on foot) or turn right (in vehicle)
- !jump/!space - Jump (on foot)
- !heal/!x - Heal
- !grenade - Throw grenade (on foot)
- !turn - Turn to a random direction (on foot)
- !attack/!shoot - Attack with eqipped weapon

To enable the commands, use !enablechaos, and disable with !disablechaos (streamer/moderator only).

## Setup

Create commands:

### !w - Walk/drive forwards

- Trigger: !w
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: w
    - Secs: 3

### !sprint - Sprint forwards (on foot)

- Trigger: !sprint
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: w
    - Modifiers: Shift
    - Secs: 3

### !s - Walk/drive backwards

- Trigger: !s
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: s
    - Secs: 3

### !a/!left - Strafe left (on foot) or turn left (in vehicle)

- Trigger: !a
- Alias: !left
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: a
    - Secs: 1

### !d/!right - Strafe right (on foot) or turn right (in vehicle)

- Trigger: !d
- Alias: !right
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: d
    - Secs: 1

### !jump/!space - Jump (on foot)

- Trigger: !jump
- Alias: !space
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: space

### !heal/!x - Heal

- Trigger: !heal
- Alias: !x
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: x

### !grenade - Throw grenade (on foot)

- Trigger: !grenade
- Effects:
  - Emulate Control
    - Mode: Key Press
    - Key: middlemouse

### !turn - Turn to a random direction (on foot)

- Trigger: !turn
- Effects:
  - Run Program
    - File: cmd.exe
    - Args: /c C:\path\to\TurnRandom.ahk (see [TurnRandom.ahk](TurnRandom.ahk))

### !attack/!shoot - Attack with eqipped weapon

- Trigger: !attack
- Alias: !shoot
- Effects:
  - Run Program
    - File: cmd.exe
    - Args: /c C:\path\to\Attack.ahk (see [Attack.ahk](Attack.ahk))

Some of the above commands require [AutoHotKey](https://www.autohotkey.com/) to be installed.

Edit each of the above commands and add:

- Restrictions:
  - Custom Variable
    - Name: chaos
    - Value: true

Create more commands:

### !enablechaos - Enable commands

- Trigger: !enablechaos
- Restrictions:
  - Permissions
    - Mode: Roles
    - Roles: Streamer, Moderator
- Effects:
  - Custom Variable
    - Name: chaos
    - Value: true

### !disablechaos - Disable commands

- Trigger: !disablechaos
- Restrictions:
  - Permissions
    - Mode: Roles
    - Roles: Streamer, Moderator
- Effects:
  - Custom Variable
    - Name: chaos
    - Value: false
