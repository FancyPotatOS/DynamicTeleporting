
# Dynamic Teleporting Datapack - V1
<em>By FancyPotatOS</em>

This datapack allows you to teleport entities based on scoreboard values


### How to use

<style> span { color: #3195F9; } </style>

- To teleport a player
  - Set the objectives
    - `dynamicteleporting.delta.x`
    - `dynamicteleporting.delta.y`
    - `dynamicteleporting.delta.z`
    
    for the respective axis

  - Run the command `function dynamicteleporting:teleport`

- To teleport across dimensions
  - Set the axis objectives as well as `dynamicteleporting.delta.dimension`
    - <span>-1</span> for the Nether
    - <span>0</span> for the Overworld
    - <span>1</span> for the End
    
  - Run the command `function dynamicteleporting:teleport_with_dimension`
    - This will also teleport you by any `dynamicteleporting.delta.*` values
    - Alternatively you can run `function dynamicteleporting:teleport/set_dimension` to only teleport by dimension

- You can add custom dimensions to the `dynamicteleporting.delta.dimension` list
  - Create a predicate for being in the dimension
    - This datapack has one for each vanilla dimension, like so: `dynamicteleporting:in_overworld`

  - Include a function to the tag `#dynamicteleporting:teleport/set_dimension`
    - The contents should look like this for each dimension, replacing the 0 with a unique number and the dimension-specific values:

      `execute if score @s dynamicteleporting.delta.dimension matches 0 unless predicate dynamicteleporting:in_overworld at @s in minecraft:overworld run tp ~ ~ ~`
  
  - If you use this, it would be best practice to ensure your datapack is [fpconflict](https://github.com/FancyPotatOS/FancyPotatOSConflicts)-compliant to detect dimension number value conflicts

    - Let's designate `dynamicteleporting.dimension.# fpconflict.conflict_map` as the pattern for conflict detection
    
    - Examples of its usage can be found in `dynamicteleporting:meta/pre_detect.mcfunction` and `dynamicteleporting:meta/detect.mcfunction` respectively:

      `scoreboard players add dynamicteleporting.dimension.0 fpconflict.conflict_map 1`

      `execute unless score dynamicteleporting.dimension.0 fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"Dynamic Teleporting Datapack - V1","obfuscated":false,"color":"blue"},"(",{"text":"dynamicteleporting.dimension.0","italic":true,"color":"dark_aqua"},")"]`
