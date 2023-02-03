gamerule commandBlockOutput false
#gamerule doEntityDrops false
#gamerule doFireTick false
#gamerule doTileDrops false
#gamerule keepInventory true

###server
scoreboard objectives add _t_create dummy
scoreboard objectives add _t_shop dummy
scoreboard objectives add _t_mbox dummy
scoreboard objectives add _t_detect dummy

scoreboard objectives add _points dummy
scoreboard objectives add _use dummy
scoreboard objectives add _currentuse dummy

scoreboard objectives add _math1 dummy
scoreboard objectives add _math2 dummy

#shop
scoreboard objectives add _item dummy
scoreboard objectives add _output dummy 
scoreboard objectives add _range dummy

#mbox
scoreboard objectives add _m_first dummy
scoreboard objectives add _m_tbear dummy
scoreboard objectives add _m_enabled dummy
scoreboard objectives add _m_count dummy

scoreboard players set #SERVER _t_create 1
scoreboard players set #SERVER _t_shop 1
scoreboard players set #SERVER _t_mbox 1
scoreboard players set #SERVER _t_detect 1

###player
scoreboard objectives add detect minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add points totalKillCount
scoreboard objectives add facing dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy








