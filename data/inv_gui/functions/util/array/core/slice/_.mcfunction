#> inv_gui:util/array/core/slice/_
#
# @input
#   storage inv_gui:util in
#       array: any[]
#       start?: int
#       end?: int
#
# @output
#   storage inv_gui:util out
#       array: any[]
#
# @within function inv_gui:util/array/slice

#>
# @private
    #declare score_holder $End
    #declare score_holder $Start

#>
# @within inv_gui:util/array/core/slice/**
    #declare score_holder $Index


# 引数をSıfırlama / başlatma.
    execute unless data storage inv_gui:util in.end run data modify storage inv_gui:util in.end set value 2147483647
    execute unless data storage inv_gui:util in.start run data modify storage inv_gui:util in.start set value 0

# 戻り値をSıfırlama / başlatma.
    data modify storage inv_gui:util out.array set value []


# 値を取得
    execute store result score $End InvGui run data get storage inv_gui:util in.end
    execute store result score $Start InvGui run data get storage inv_gui:util in.start

# end以降の要素を取り除く
    execute store result score $Index InvGui if data storage inv_gui:util in.array[]
    scoreboard players operation $Index InvGui -= $End InvGui
    execute if score $Index InvGui matches 1.. run function inv_gui:util/array/core/slice/remove

# start以降の要素を取り出す
    execute store result score $Index InvGui if data storage inv_gui:util in.array[]
    scoreboard players operation $Index InvGui -= $Start InvGui
    execute if score $Index InvGui matches 1.. run function inv_gui:util/array/core/slice/move


# 要素の順序を反転
    data modify storage inv_gui:util in.array set from storage inv_gui:util/temp Sliced
    function inv_gui:util/array/reverse


# Geçici veriyi temizle.
    scoreboard players reset $End InvGui
    scoreboard players reset $Start InvGui
    scoreboard players reset $Index InvGui
    data remove storage inv_gui:util/temp Sliced
    data remove storage inv_gui:util in
