#> inv_gui:core/api/paginate/_
#
# @within function inv_gui:api/paginate

#>
# @private
    #declare score_holder Pag_Total
    #declare score_holder Pag_Page
    #declare score_holder Pag_Size
    #declare score_holder Pag_Start
    #declare score_holder Pag_End


# Default size
    execute unless data storage inv_gui:data in.size run data modify storage inv_gui:data in.size set value 7

# Load scores
    execute store result score Pag_Total Inv GUI if data storage inv_gui:data in.items[]
    execute store result score Pag_Page Inv GUI run data get storage inv_gui:data in.page
    execute store result score Pag_Size Inv GUI run data get storage inv_gui:data in.size

# start = page * size
    scoreboard players operation Pag_Start Inv GUI = Pag_Page Inv GUI
    scoreboard players operation Pag_Start Inv GUI *= Pag_Size Inv GUI

# end = start + size
    scoreboard players operation Pag_End Inv GUI = Pag_Start Inv GUI
    scoreboard players operation Pag_End Inv GUI += Pag_Size Inv GUI

# has_prev: page > 0
    execute if score Pag_Page Inv GUI matches 1.. run data modify storage inv_gui:data out.has_prev set value 1b
    execute if score Pag_Page Inv GUI matches ..0 run data modify storage inv_gui:data out.has_prev set value 0b

# has_next: end < total
    execute if score Pag_End Inv GUI < Pag_Total Inv GUI run data modify storage inv_gui:data out.has_next set value 1b
    execute unless score Pag_End Inv GUI < Pag_Total Inv GUI run data modify storage inv_gui:data out.has_next set value 0b

# Slice via util
    data modify storage inv_gui:util in.array set from storage inv_gui:data in.items
    execute store result storage inv_gui:util in.start int 1 run scoreboard players get Pag_Start Inv GUI
    execute store result storage inv_gui:util in.end int 1 run scoreboard players get Pag_End Inv GUI
    function inv_gui:util/array/slice
    data modify storage inv_gui:data out.items set from storage inv_gui:util out.array

# Reset
    scoreboard players reset Pag_Total Inv GUI
    scoreboard players reset Pag_Page Inv GUI
    scoreboard players reset Pag_Size Inv GUI
    scoreboard players reset Pag_Start Inv GUI
    scoreboard players reset Pag_End Inv GUI
    data remove storage inv_gui:util in
    data remove storage inv_gui:util out
    data remove storage inv_gui:data in
