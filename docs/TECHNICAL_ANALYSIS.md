# Technical Analysis: Meewizard Datapack (1.20.1)

This document provides a conceptual technical analysis for a Minecraft 1.20.1 datapack focused on wizard wands and magic. The architecture emphasizes performance, usability, and working within the constraints of vanilla Minecraft mechanics.

## Wand Controls
The core interaction with the wand should be intuitive and utilize standard Minecraft inputs:
*   **Casting:** Triggered by right-clicking with the wand.
*   **Cycling Spells:** Triggered by the "swap item in hand" keybind.
*   **Backward Cycling:** Triggered by combining the "sneak" keybind with the "swap item in hand" keybind.
*   **UI Feedback:** The currently selected spell should always be displayed to the player using the actionbar to provide immediate, non-intrusive feedback.

## The Spellbook Encyclopedia
The spellbook acts as the central UI for managing magic. It should be implemented as a written book.
*   **Content:** It should contain ASCII art, spell descriptions, and clickable text buttons allowing the player to assign spells to one of 3 active slots.
*   **Static Design:** The book must be treated as a static UI. By avoiding dynamic generation or constant updating of the book's contents while the player is reading it, we bypass vanilla Minecraft's UI refresh limitations, which otherwise cause the book to abruptly close or stutter. 
*   **Secrets:** Clickable hidden hints for spell upgrades can be embedded within the static text.

*(Note: If a command is used to give this book, such as `/give @p written_book...`, remember that this is only an example of how one might provide the item, and the actual implementation will rely on conceptual item generation routines.)*

## Holographic Power Bounding
For advanced visual feedback, a "Holographic Power Bounding" system is planned.
*   **Input Trigger:** Pressing "Sneak" + "Drop Item" simultaneously.
*   **Hook System:** The datapack will provide conceptual "begin" and "end" function hooks that trigger when this input combination is detected.
*   **Implementation:** The user (developer) will manually implement the actual holograms and visual effects within these provided hooks, allowing for maximum customization without hardcoding the visuals into the core logic.

## Unlocking & Upgrading (Continual Decay)
Progression is driven by a system of continual decay, where tracked statistics slowly fade over time.
*   **Performance Considerations:** When tracking and calculating these stats, mathematical operations are extremely fast. However, spatial checks (such as scanning areas for specific block types) must be heavily restricted. Scanning blocks can cause severe lag and is asymptotically terrifying in terms of performance impact.

## Mana System
The mana system governs the casting of spells.
*   **Base Mechanics:** Players will have a base mana pool and a baseline regeneration rate.
*   **Environmental Boosts:** Certain environments can boost mana regeneration. To implement this performantly, the system should use distance checks to invisible marker entities placed in the world, rather than actively scanning a radius of blocks around the player. This significantly reduces the performance overhead.

*(Note: A command like `/execute as @a at @s if entity @e[type=marker,distance=..5] run...` is only an example of how this distance check might be structured.)*

## Level 3 Spells
The pinnacle of magic, Level 3 Spells, are designed to feel incredibly powerful by breaking standard game laws.
*   **Effects:** These spells can include effects like teleporting impossible distances or obliterating entire structures.
*   **Cost:** To balance their power, they should have extreme costs, such as instantly consuming the entire mana bar and forcing a lengthy regeneration period.
