#> inv_gui:core/emitter/check_item_click/_
#
# Detects the item the player clicked and fires the click event.
#
# @within function inv_gui:core/tick

# Check item click
    execute store success storage inv_gui:datatemp isClicked byte 1.0 run clear @s #inv_gui:dataall{InvGui:{isButton:true}}

# If item clicked, fire the click event.
    execute if data storage inv_gui:datatemp {isClicked:true} run function inv_gui:core/handler/on_item_click/_

# Clean up temporary data.
    data remove storage inv_gui:datatemp isClicked
