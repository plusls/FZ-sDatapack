#设置或重设超时时间为300s，超时后运行timeout函数
schedule function fz:config/timeout 300s
#输出玩家可见的设置页面
execute if data storage fz.installed {sweeper:1b} run tellraw @s {"text": "扫地机："}
    ##扫地机时间，对应分数1478966210-1478966215
    execute if data storage fz.installed {sweeper:1b} run tellraw @s [{"text": "- [关]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966210"}},{"text": "[30秒]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966211"}},{"text": "[1分钟]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966212"}},{"text": "[2分钟]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966213"}},{"text": "[3分钟]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966214"}},{"text": "[4分钟]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966215"}}]
    ##开启矿车白名单1478966216
    execute if data storage fz.installed {sweeper:1b} unless score sweepMinecart parameter matches 1 run tellraw @s [{"text": "- 矿车白名单："},{"text": "[已关闭]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966216"}}]
    ##关闭矿车白名单1478966217
    execute if data storage fz.installed {sweeper:1b} if score sweepMinecart parameter matches 1 run tellraw @s [{"text": "- 矿车白名单："},{"text": "[已开启]","clickEvent": {"action": "run_command","value": "/trigger config set 1478966217"}}]
execute if data storage fz.installed {scoreboards:1b} run tellraw @s {"text": "记分板："}
    ##计分板显示，对应分数1838019370-1838019379
    execute if data storage fz.installed {scoreboards:1b} run tellraw @s [{"text": "- [关]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019370"}},{"text": "[轮播]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019371"}},{"text": "[总量]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019379"}},{"text": "[在线时间(h)]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019372"}},{"text": "[抖M名单]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019373"}},{"text": "[死亡榜]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019374"}},{"text": "[挖掘榜]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019375"}},{"text": "[钩直饵咸]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019376"}},{"text": "[击杀榜]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019377"}},{"text": "[交♂易榜]","clickEvent": {"action": "run_command","value": "/trigger config set 1838019378"}}]