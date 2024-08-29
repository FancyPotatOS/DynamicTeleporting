
execute if score @s dynamicteleporting.delta.dimension matches -1 unless predicate dynamicteleporting:in_the_nether at @s in minecraft:the_nether run tp ~ ~ ~

execute if score @s dynamicteleporting.delta.dimension matches 0 unless predicate dynamicteleporting:in_overworld at @s in minecraft:overworld run tp ~ ~ ~

execute if score @s dynamicteleporting.delta.dimension matches 1 unless predicate dynamicteleporting:in_the_end at @s in minecraft:the_end run tp ~ ~ ~
