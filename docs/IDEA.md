# MeeWizard Datapack Design Document

## Spells Overview
Spells have the following properties:
- **Name**: The identifier of the spell.
- **Description**: What the spell does.
- **Power**: An integer representing the spell's magnitude/strength.
- **Mana Cost**: The amount of mana required to cast the spell.

Spells are organized into "families" of up to three levels:
1. **Level 1 (Minor)**: Minor improvements to the player's life.
2. **Level 2 (Advantage)**: Gives a clear advantage over regular players.
3. **Level 3 (Game-Breaking)**: Breaks game balance and Minecraft limitations, intended only for endgame players to enhance their experience.

*Note: Some spell families may only have one or two levels. Some may start from the second or the third level.*

## Unlocking & Upgrading Spells
To use a spell, a player must first unlock it. Higher-level spells require the previous level to be unlocked.

- **Fading-Out Statistics**: Unlocking is tied to hidden statistics that decay over time (Continual Decay). For example, unlocking "Mega-Jump" requires jumping 150 times within a specific time window. If the player acts faster than the decay rate, their score goes up. Once unlocked, the statistic is revealed.
- **Upgrading**: Upgrading a spell (which increases basic power and decreases mana cost) requires satisfying the same statistic but under much harder conditions (e.g., 495 jumps in 5 minutes).
- **Third Upgrade (Level 3)**: Reaching the final level requires breaking fundamental Minecraft laws (e.g., surviving the void, moving impossible distances in a single tick).

## Wand Controls & Spell Pool
Players use a **Wizard Wand** (Carrot on a Stick / Warped Fungus on a Stick) to interact with spells.

- **Casting**: Right-click to cast the currently selected spell.
- **Active Spell Pool**: Players can have up to 3 spells in their active pool at one time.
- **Cycling Spells**: Press the `Swap Item` key (default 'F') to cycle forward through the pool, and `Sneak + Swap Item` to cycle backward. This allows for fast and fluid switching during combat.
- **Holographic Power Bounding**: Pressing `Sneak + Drop Item` (Sneak + 'Q') opens a holographic menu to bound (limit) the power of active spells.
- **The Spellbook UI**: A crafted **Spellbook (Written Book GUI)** contains clickable text allowing players to:
  - Assign unlocked spells to their 3 active slots.

## Mana System
- **Fixed Mana Cap**: Every player has a fixed maximum mana pool (e.g., 100) and a set base regeneration rate.
- **Environmental & Item Boosts**: While the cap remains fixed, the *regeneration rate* can be increased by wearing specific items or standing in special environments (e.g., near enchanting tables or magical blocks).
- **Spell Costs**: Powerful third-level spells will consume almost the entire mana bar, preventing them from being spammed and making them tactical endgame abilities.
