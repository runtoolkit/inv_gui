#> inv_gui:datacore/common/api/build/create_menu/_
#
# Create the menu
#
# @input
#   storage inv_gui:data in
#       id: any
#           Menu identifier
#       contents: (string[] @ 9)[] @ 3
#           Menu contents to create
#
# @output
#   vector 10000 2 10000
#       container.0~26
#           Created menu
#
# @within function inv_gui:datacore/api/build/**

#>
# @within function
#   inv_gui:datacore/common/api/build/**
    #declare score_holder $Slot


# Flatten contents
    data modify storage inv_gui:datautil in.array set from storage inv_gui:data in.contents
    function inv_gui:datautil/array/flat

# Assign contents
    data modify storage inv_gui:datatemp Contents set from storage inv_gui:datautil out.array
    function inv_gui:datautil/cleanup


# Set the starting slot for item placement
    execute store result score $Slot InvGui if data storage inv_gui:datatemp Contents[]
    scoreboard players remove $Slot InvGui 1

# Place item
    function inv_gui:datacore/common/api/build/create_menu/loop


# Clean up temporary data.
    scoreboard players reset $Slot InvGui
    data remove storage inv_gui:datatemp Contents
    data remove storage inv_gui:datatemp Content
    data remove storage inv_gui:datatemp Slot
    data remove storage inv_gui:datatemp ItemInfo
    data remove storage inv_gui:datatemp isGlobalItemInfo
