
execute unless score version.dynamicteleporting fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Dynamic Teleporting Datapack - V1 ","color":"blue"},"(",{"text":"Overlapping versions.","italic":true,"color":"dark_aqua"},")"]

execute unless score dynamicteleporting.dimension.-1 fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Dynamic Teleporting Datapack - V1","obfuscated":false,"color":"blue"},"(",{"text":"dynamicteleporting.dimension.-1","italic":true,"color":"dark_aqua"},")"]
execute unless score dynamicteleporting.dimension.0 fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Dynamic Teleporting Datapack - V1","obfuscated":false,"color":"blue"},"(",{"text":"dynamicteleporting.dimension.0","italic":true,"color":"dark_aqua"},")"]
execute unless score dynamicteleporting.dimension.1 fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Dynamic Teleporting Datapack - V1","obfuscated":false,"color":"blue"},"(",{"text":"dynamicteleporting.dimension.1","italic":true,"color":"dark_aqua"},")"]
