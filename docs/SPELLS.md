# Spells

This file contains spell descriptions.

## Spell structure

1. **Identifier** - name in the system. Only english lowercase letters and `_`.
2. **Index** - numerical index for scoreboards. Integer.
3. **Name** - displayed name for players.
4. **Description** - briefly how it works and (optionally) some story behind this spell.
5. **Family** - spell family this spell belongs to.
6. **Cost** - how many mana does this spell takes initially. In future players may decrease this parameter by upgrading their spells. For now it is permanent.
7. **Delay** - once in how many ticks the spell may be casted. In future players may decrease this parameter by upgrading their spells. For now it is permanent.
8. **Power** - the maximum value of the spell. What it means exactly depends on spell.
9. **Requirements** - which statistics should you satisfy to unlock the spell (hidden for players).
10. **Hint** - hint on the acquiring requirements.

## 1. Leap

1. **Identifier**: `leap`
2. **Index**: `1`
3. **Name**: Leap
4. **Description**: Tosses the player up. You should be careful with landing.
5. **Family**: Runaway (Level 1)
6. **Cost**: 40mp
7. **Delay**: 30t (1.5s)
8. **Power**: 7 blocks
9. **Requirements**: Jump 150 times in two minutes.
10. **Hint** : When *The Wizard* first set foot in Australia, he found himself puzzled by creatures that seemed to laugh at gravity. The kangaroos crossed the plains not by walking, but by an endless dance of leaps. He spent *many minutes imitating their strange rhythm*, and only then did the earth finally agree to let him fly.

## 2. Toss

1. **Identifier**: `toss`
2. **Index**: `2`
3. **Name**: Toss
4. **Description**: Tosses everybody around the player up and applies levitation effect. May be treated as stunning spell.
5. **Family**: Runaway (Level 2)
6. **Cost**: 30mp
7. **Delay**: 100t (5s)
8. **Power**: 3 seconds of levitation
9. **Requirements**: ??
10. **Hint**: ??

## 3. Tornado

1. **Identifier**: `tornado`
2. **Index**: `3`
3. **Name**: Tornado
4. **Description**: Summons the slightly moving tornado that tosses everybody around up and applies levitation effect. Upgrade verion of Level 2 spell.
5. **Family**: Runaway (Level 3)
6. **Cost**: 100mp
7. **Delay**: 600t (30s)
8. **Power**: 10 seconds of living tornado
9. **Requirements**: ??
10. **Hint**: ??

## 4. Spew

1. **Identifier**: `spew`
2. **Index**: `4`
3. **Name**: Spew
4. **Description**: Spews the flames from the player's mouth for a two second. Flames burns everything around igniting entities.
5. **Family**: Burn in Hell (Level 2)
6. **Cost**: 50mp
7. **Delay**: 100t (5s)
8. **Power**: 40 ticks of spewing
9. **Requirements**: Kill 10 Ghasts with their own fireballs.
10. **Hint** : *The Wizard* once wandered the burning halls of *the Nether*, where the skies screamed with living flames. He did not answer fire with fire of his own, but with the very flames his enemies had given him. Thus he learned that the greatest fire is the one *turned against its master*.

## 5. Geyser

1. **Identifier**: `geyser`
2. **Index**: `5`
3. **Name**: Geyser
4. **Description**: Summons an eruption geyser, that spews the flames all around for 10 seconds. Flames burns the environment and igniting an entities.
5. **Family**: Burn in Hell (Level 3)
6. **Cost**: 100mp
7. **Delay**: 600t (30s)
8. **Power**: 200 ticks of erupting
9. **Requirements**: Submerge in lava while surviving for at least 30 seconds without armor at all and fire resistance potion. Developer note: the player shall be on fire, if they somehow be in lava and in water simultaneously - it does not count.
10. **Hint** : *The Wizard* once mistook a lake of *lava* for a sea that had forgotten the sky. He cast *aside potions and every piece of armor* and descended into its depths, trusting only his own magic. The fire accepted his resolve, and from its heart he learned how to command an endless eruption.

## 6. Frostbite

1. **Identifier**: `frostbite`
2. **Index**: `6`
3. **Name**: Frostbite
4. **Description**: Shoots a chilling ray that applies a severe slowness effect and minor damage.
5. **Family**: Trapped Under Ice (Level 1)
6. **Cost**: 10mp
7. **Delay**: 20t (1s)
8. **Power**: 1hp damage
9. **Requirements**: Freeze completely inside powder snow and survive.
10. **Hint** : *The Wizard* once wondered if the cold could be understood by those who feared it. He stood beneath the endless snow, *letting the ice claim him completely*, and discovered that even the harshest frost can be commanded.

## 7. Ice Wall

1. **Identifier**: `ice_wall`
2. **Index**: `7`
3. **Name**: Ice Wall
4. **Description**: Summons a temporary wall of ice blocks.
5. **Family**: Trapped Under Ice (Level 2)
6. **Cost**: 25mp
7. **Delay**: 200t (10s)
8. **Power**: 8 seconds of temporary wall
9. **Requirements**: Spend an entire night walking on powder snow.
10. **Hint**: ??

## 8. Earthquake

1. **Identifier**: `earthquake`
2. **Index**: `8`
3. **Name**: Earthquake
4. **Description**: Shakes the ground around the player tossing and hitting entities nearby.
5. **Family**: Dark Stone (Level 2)
6. **Cost**: 80mp
7. **Delay**: 600t (30s)
8. **Power**: 10 seconds of earthquake
9. **Requirements**: Take fall damage of exactly 4 hearts 10 times.
10. **Hint**: ??

## 9. Fangs

1. **Identifier**: `fangs`
2. **Index**: `9`
3. **Name**: Fangs
4. **Description**: Casts Evoker Fangs from the ground like Evoker does.
5. **Family**: Dark Stone (Level 3)
6. **Cost**: 65mp
7. **Delay**: 200t (10s)
8. **Power**: ?? fangs
9. **Requirements**: ??
10. **Hint**: ??

## 10. Makr

1. **Identifier**: `mark`
2. **Index**: `10`
3. **Name**: Mark
4. **Description**: Summons wither head chilly moving forward. Once wither head touches (mob?) or player it becomes cursed. Curse gives red glowing and darkness effect.
5. **Family**: ?? (Level 1)
6. **Cost**: 25mp
7. **Delay**: 100t (5s)
8. **Power**: 30 seconds of curse
9. **Requirements**: Put nine wither skeleton heads in the crafting table.
10. **Hint**: ??

## 11. Mini-skeleton

1. **Identifier**: `mini_skeleton`
2. **Index**: `11`
3. **Name**: Mini-skeleton
4. **Description**: Summons mini skeleton that flying around the player. It shoots small black missles to the nearest cursed enemy
5. **Family**: ?? (Level 2)
6. **Cost**: 100mp
7. **Delay**: 1200t (60s)
8. **Power**: 30 seconds of mini skeleton shooting cursed enemies.
9. **Requirements**: Put three wither stars in the crafting table.
10. **Hint**: ??
