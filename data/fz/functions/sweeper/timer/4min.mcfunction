tellraw @a {"text": "[提醒]4min后清理掉落物","color": "#66ffff"}
execute as @a at @a run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1
schedule function fz:sweeper/timer/3min 60s