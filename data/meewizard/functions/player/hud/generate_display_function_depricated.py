"""
DEPRICATED.

The idea:
When a player holds a wand they should see in the action bar the message kinda:
"Mana: ??/?? | *[Selected spell]* - [other spell] - [other spell]"

The problem:
Minecraft does not allow to insert strings in json text components, so spell
names insertions became impossible. There is no way to past "Selected spell" in
the string.

The solution:
After analysis of minecraft limitations no appropriate way to solve such
problem was found. Therefore bruteforce solution seems the only way to solve
this problem. This script generates .mcfunction with all possible variants of
choosing three spells, with one active.
"""


# ------------------------------------------------------- Config -------------------------------------------------------


spell_names = [
    "Empty",        # 0
    "Spell A",      # 1
    "Spell B",      # 2
    "Spell C",      # 3
    "Spell D",      # 4
]

unknown_spell = "Unknown"   # Prints if given index is wrong

# For identifiers
active_slot_scoreboard = "meewizard.player.active_slot"
slot1_spell_scoreboard = "meewizard.player.slot1_spell"
slot2_spell_scoreboard = "meewizard.player.slot2_spell"
slot3_spell_scoreboard = "meewizard.player.slot3_spell"

# How resulting file should looks like
resulting_file_content = """# Display function
#
# The idea:
# When a player holds a wand they should see in the action bar the message:
# "Mana: ??/?? | *[Selected spell]* - [other spell] - [other spell]"
#
# The problem:
# Minecraft does not allow to insert strings in json text components, so spell
# names insertions became impossible. There is no way to past "Selected spell"
# in the string.
#
# The solution:
# After analysis of minecraft limitations no appropriate way to solve such
# problem was found. Therefore bruteforce solution seems the only way to solve
# this problem. The script `generate_display_function.py` in this directory
# generates this file with all possible variants of choosing three spells, with
# one active.

# All possible combination with the first active spell
!first_active_spell

# All possible combination with the second active spell
!second_active_spell

# All possible combination with the third active spell
!third_active_spell
"""

# The command with the message to display
base_message = """
title !identifier actionbar [
    {"text":"Мана: ","color":"white"},
    {"score":{"name":"*","objective":"meewizard.player.mana"},"color":"aqua"},
    {"text":"/","color":"gray"},
    {"score":{"name":"*","objective":"meewizard.player.max_mana"},"color":"aqua"},
    {"text":" | ","color":"gray"},
"""

first_active_spell = base_message + """
    {"text":"[","color":"white","bold":true},
    {"text":"!slot_1","color":"green","bold":true},
    {"text":"]","color":"white","bold":true},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"gray"},
    {"text":"!slot_2","color":"dark_green"},
    {"text":"]","color":"gray"},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"gray"},
    {"text":"!slot_3","color":"dark_green"},
    {"text":"]","color":"gray"}
]
"""

second_active_spell = base_message + """
    {"text":"[","color":"gray"},
    {"text":"!slot_1","color":"dark_green"},
    {"text":"]","color":"gray"},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"white","bold":true},
    {"text":"!slot_2","color":"green","bold":true},
    {"text":"]","color":"white","bold":true},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"gray"},
    {"text":"!slot_3","color":"dark_green"},
    {"text":"]","color":"gray"}
]
"""

third_active_spell = base_message + """
    {"text":"[","color":"gray"},
    {"text":"!slot_1","color":"dark_green"},
    {"text":"]","color":"gray"},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"gray"},
    {"text":"!slot_2","color":"dark_green"},
    {"text":"]","color":"gray"},

    {"text":" - ","color":"gray"},

    {"text":"[","color":"white","bold":true},
    {"text":"!slot_3","color":"green","bold":true},
    {"text":"]","color":"white","bold":true}
]
"""


# ----------------------------------------------------- Functions ------------------------------------------------------


def insert_spells(string: str, spell_1: str, spell_2: str, spell_3: str) -> str:
    return string.replace("!slot_1", spell_1).replace("!slot_2", spell_2).replace("!slot_3", spell_3)

def make_identifier(active_slot: int, first_spell_id: int, second_spell_id: int, third_spell_id: int) -> str:
    return "@a[scores={" + \
            active_slot_scoreboard + "=" + str(active_slot) + "," + \
            slot1_spell_scoreboard + "=" + str(first_spell_id) + "," + \
            slot2_spell_scoreboard + "=" + str(second_spell_id) + "," + \
            slot3_spell_scoreboard + "=" + str(third_spell_id) + \
          "}]"

def insert_identifier(string: str, active_slot: int, first_spell_id: int, second_spell_id: int, third_spell_id: int) -> str:
    return string.replace("!identifier", make_identifier(active_slot, first_spell_id, second_spell_id, third_spell_id))

def make_string(active_slot: int, first_spell_id: int, second_spell_id: int, third_spell_id: int) -> str:
    if 0 <= first_spell_id < len(spell_names):
        first_spell_string = spell_names[first_spell_id]
    else:
        first_spell_string = unknown_spell

    if 0 <= second_spell_id < len(spell_names):
        second_spell_string = spell_names[second_spell_id]
    else:
        second_spell_string = unknown_spell

    if 0 <= third_spell_id < len(spell_names):
        third_spell_string = spell_names[third_spell_id]
    else:
        third_spell_string = unknown_spell

    string = [first_active_spell, second_active_spell, third_active_spell][active_slot - 1]
    string = insert_spells(string, first_spell_string, second_spell_string, third_spell_string)
    string = insert_identifier(string, active_slot, first_spell_id, second_spell_id, third_spell_id)

    return string


# ------------------------------------------------------- Script -------------------------------------------------------


# Polish the strings
first_active_spell = "".join([line.strip() for line in first_active_spell.split("\n") if line.strip() != ""])
second_active_spell = "".join([line.strip() for line in second_active_spell.split("\n") if line.strip() != ""])
third_active_spell = "".join([line.strip() for line in third_active_spell.split("\n") if line.strip() != ""])

result = "" + resulting_file_content
first_active_spell_combinations = "\n".join([
    make_string(1, x, y, z)
    for x in range(len(spell_names))
    for y in range(len(spell_names))
    for z in range(len(spell_names))
])
second_active_spell_combinations = "\n".join([
    make_string(2, x, y, z)
    for x in range(len(spell_names))
    for y in range(len(spell_names))
    for z in range(len(spell_names))
])
third_active_spell_combinations = "\n".join([
    make_string(3, x, y, z)
    for x in range(len(spell_names))
    for y in range(len(spell_names))
    for z in range(len(spell_names))
])
result = result.replace("!first_active_spell", first_active_spell_combinations)\
               .replace("!second_active_spell", second_active_spell_combinations)\
               .replace("!third_active_spell", third_active_spell_combinations)

with open(input("Enter the output filename: "), "w", encoding="utf8") as file:
    file.write(result)
    print("File created successfully")
