# ALBW Randomizer Tracker

## About

This is a PopTracker pack for tracking progress in The Legend of Zelda: A Link Between
Worlds Randomizer.

## Release Notes

- Author: arborelia
- Based heavily on the EmoTracker pack by RickwithanH


## Usage Guide



### Location Color Codes

This tracker follows PopTracker's standard color scheme for its locations:

| Color               | Description                                                                                                                                                                                                                                       |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `🟩 Normal`         | All sections of this location are reachable with the current equipment and logic settings.                                                                                                                                                        |
| `🟨 Sequence Break` | All sections of this location are reachable with the current equipment, but at least one section requires a glitch or trick that is outside the current logic settings.                                                                           |
| `🟦 Inspect`        | The sections of this location are not reachable with the current equipment, but the items they contain can be seen or otherwise discerned.                                                                                                        |
| `🟥 None`           | No sections of this location are reachable by any means with the current equipment.                                                                                                                                                               |
| `⬛ Cleared`         | This location and all of its sections have been marked as cleared by the user.                                                                                                                                                                    |

- Currently, the `🟦 Inspect` locations are of limited value as the randomizer does not replace most freestanding models yet.


### Logic Modes

The randomizer supports five* Logic Modes, and so does this tracker. You can select the mode matching your seed in the
settings panel in the bottom left of the tracker.

| Mode                                                    | Description                                                                                                                                                                         |
|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ![Normal Logic](images/settings/Normal.png)             | Standard gameplay, no tricky item use or glitches.                                                                                                                                  |
| ![Hard Logic](images/settings/Hard.png)                 | Adds tricks that aren't technically glitches. Lamp + Net considered as weapons. No glitches.                                                                                        |
| ![Glitched Logic](images/settings/Glitched.png)         | Includes the above plus "basic", easy-to-learn glitches.                                                                                                                            |
| ![Adv Glitched Logic](images/settings/Adv_Glitched.png) | Includes the above plus "advanced" glitches that may be a challenge to master.                                                                                                      |
| ![Hell Logic](images/settings/Hell.png)                 | Includes every known RTA-viable glitch, including the insane ones. Note that the Bee Badge is omitted from the item pool in this mode, to preserve the infamous Bee Boosting trick. |

Raising the Logic Mode to higher difficulties will cause `🟨 Sequence Break` sections to become `🟩 Normal` as they
enter logic.

(*) A sixth Logic Mode, **No Logic**, is also available in the randomizer. Players wishing to tracker their progress
while playing without logic should select the **Glitched (Hell)** Logic Mode, which already maximally describes
available checks.

### Swordless Mode

![Swordless](images/items/fsword.png)
![Swordless](images/items/x_small.png)

Right-click the base Sword item to tell the tracker you're playing in Swordless Mode, which slightly changes the logic:

- The Barrier around Hyrule Castle will be removed, allowing access without the Master Sword.
- Zelda and the Triforce will require the Net to access, even on the Normal Logic Mode.

### Minigames

![Minigames](images/display/minigames.png)

You can tell the tracker whether you've Enabled or Disabled Minigames down in the Settings panel. Disabling Minigames
will hide their checks on the tracker.

The following checks are hidden when Minigames are Disabled:

- Cucco Minigame
- Hyrule Hotfoot
- Octoball Derby
- Rupee Rush (Hyrule)
- Rupee Rush (Lorule)
- Treacherous Tower

Note that the 2 Maiamai located inside the Rupee Rush minigames will not be hidden.

### Lorule Castle Trials


This setting tells the tracker whether the option to skip the Lorule Castle Trials was selected in the randomizer. This
setting slightly alters the logic needed to reach the Final Boss fight, as the player won't need to complete the trials.

### Dark Room Lamp Requirement

This setting determines whether the logic considers the Lamp as a necessary item to cross dark rooms.

If the Lamp is needed, then checks the player would be able to obtain if they crossed a dark room with no light
source will appear as `🟨 Sequence Breaks`. This is because the setting puts them out of logic, but they are
still technically obtainable as the Lamp is not a hard requirement.

Similarly, if the Lamp is not required, then those same checks will appear `🟩 Normal`, as the setting
places them in logic, and the seed may require the player to cross a dark room with no light source.

### Display Bee Boost Glitches

![Bee Boost Glitches](images/display/bottle_bee.png)

Turn this setting on to show `🟨 Sequence Break` checks that require using the Bee Boost glitch.

Checks requiring the Bee Boost glitch are hidden by default given the trick's extreme terribleness.

<u>**Note**</u>: This setting will be ignored if the **Glitched (Hell)** Logic Mode is selected, as they would then be in
logic.

### Maiamai Map

![Maiamai Map](images/display/maiamai_map.png)

This setting toggles the visibility of the Maiamai checks.


## License

This program is licensed under the GNU General Public License v2.0.
