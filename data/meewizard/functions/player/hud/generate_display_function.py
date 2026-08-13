"""
Generates list of commands with different spell names. Simple and
Asymptotically appropriate
"""

COMMAND = """execute if score @s meewizard.player.active_slot matches !index run title @s actionbar [{"text":"Mana: ","color":"white"},{"score":{"name":"*","objective":"meewizard.player.mana"},"color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.max_mana"},"color":"aqua"},{"text":" | ","color":"gray"},{"text": "Spell: ","color":"white"},{"text":"!name","color":"green"},{"text":" [","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.active_slot"},"color":"green"},{"text":"]","color":"gray"}]"""

spell_names = [ # Index
    "Empty",    # 0
    "Leap",     # 1
    "Toss",     # 2
    "Tornado",  # 3
    "Spew",     # 4
    "Geyser",   # 5
    "Frostbite",# 6
    "Ice Wall", # 7
    "Earthquake",# 8
    "Fangs",    # 9
    "Mark",     # 10
    "Mini-skeleton" # 11
]

result = [
    COMMAND.replace("!index", str(i)).replace("!name", spell_names[i])
    for i in range(len(spell_names))
]
result_string = "\n".join(result)


filename = input("Enter output filename: ")
with open(filename, "w", encoding="utf8") as file:
    file.write(result_string)
    print("File successfully created")

