"""
Generates list of commands with different spell names. Simple and
Asymptotically appropriate
"""

COMMAND = """execute if score @s meewizard.spell.!identifier_cooldown matches ..0 if score @s meewizard.player.active_slot matches !index run title @s actionbar [{"text":"Mana: ","color":"white"},{"score":{"name":"*","objective":"meewizard.player.mana"},"color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.max_mana"},"color":"aqua"},{"text":" | ","color":"gray"},{"text": "Spell: ","color":"white"},{"text":"!name","color":"green"},{"text":" [","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.active_slot"},"color":"green"},{"text":"]","color":"gray"}]
execute if score @s meewizard.spell.!identifier_cooldown matches 1.. if score @s meewizard.player.active_slot matches !index run title @s actionbar [{"text":"Mana: ","color":"white"},{"score":{"name":"*","objective":"meewizard.player.mana"},"color":"aqua"},{"text":"/","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.max_mana"},"color":"aqua"},{"text":" | ","color":"gray"},{"text": "Spell: ","color":"white"},{"text":"!name","color":"green"},{"text":" [","color":"gray"},{"score":{"name":"*","objective":"meewizard.player.active_slot"},"color":"green"},{"text":"]","color":"gray"},{"text":" | ","color":"gray"},{"text":"Cooldown: "},{"score":{"name":"*","objective":"meewizard.spell.!identifier_cooldown"},"color":"green"},{"text":"t","color":"green"}]
"""

spell_info = [
    {"name": "Empty", "identifier": "empty"},                   # 0
    {"name": "Leap", "identifier": "leap"},                     # 1
    {"name": "Toss", "identifier": "toss"},                     # 2
    {"name": "Tornado", "identifier": "tornado"},               # 3
    {"name": "Spew", "identifier": "spew"},                     # 4
    {"name": "Geyser", "identifier": "geyser"},                 # 5
    {"name": "Frostbite", "identifier": "frostbite"},           # 6
    {"name": "Ice Wall", "identifier": "ice_wall"},             # 7
    {"name": "Earthquake", "identifier": "earthquake"},         # 8
    {"name": "Fangs", "identifier": "fangs"},                   # 9
    {"name": "Mark", "identifier": "mark"},                     # 10
    {"name": "Mini-skeleton", "identifier": "mini-skeleton"},   # 11
]

result = [
    COMMAND.replace("!index", str(i)).replace("!name", spell_info[i]["name"]).replace("!identifier", spell_info[i]["identifier"])
    for i in range(len(spell_info))
]
result_string = "\n".join(result)


filename = input("Enter output filename: ")
with open(filename, "w", encoding="utf8") as file:
    file.write(result_string)
    print("File successfully created")

