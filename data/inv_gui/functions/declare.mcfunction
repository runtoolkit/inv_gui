#> inv_gui:declare
# @private

#>
# @public
#alias vector inv_gui 10000 0 10000

#>
# @public
#declare storage inv_gui:data

#>
# @public
#declare tag inv_gui.Target
#declare tag inv_gui.Player

#>
# @public
#declare item_modifier inv_gui:register_item/normal
#declare item_modifier inv_gui:register_item/button

#>
# @public
#declare tag/function inv_gui:handler/on_open/chest_minecart
#declare tag/function inv_gui:handler/on_open/ender_chest
#declare tag/function inv_gui:handler/on_close/chest_minecart
#declare tag/function inv_gui:handler/on_close/ender_chest
#declare tag/function inv_gui:handler/on_select/chest_minecart
#declare tag/function inv_gui:handler/on_select/ender_chest
#declare tag/function inv_gui:set_menu/chest_minecart
#declare tag/function inv_gui:set_menu/ender_chest
#declare tag/function inv_gui:set_variable/chest_minecart
#declare tag/function inv_gui:set_variable/ender_chest


#> Shulker box for item storage
# @within * inv_gui:**
#alias vector LocalContainer 10000 1 10000

#> Shulker box for menu creation
# @within * inv_gui:**
#alias vector MenuContainer 10000 2 10000


#> Storage for data
# @within * inv_gui:**
#declare storage inv_gui:core

#> Storage for temporary processing
# @within * inv_gui:**
#declare storage inv_gui:temp
#declare storage inv_gui:temp/build
#declare storage inv_gui:temp/set_menu

#> Storage for util
# @within * inv_gui:**
#declare storage inv_gui:util

#> Storage for util temporary processing
# @within * inv_gui:util/**
#declare storage inv_gui:util/temp


#> Scoreboards
# @within * inv_gui:**
#declare objective inv_gui
#declare objective inv_gui.Id
#declare objective inv_gui.Drop

#> Score holders
# @within * inv_gui:**
#declare score_holder $LocalItemSlotIndex
#declare score_holder $MinecartIndex

#> Constants
# @within * inv_gui:**
#declare score_holder $65536
#declare score_holder $_gcs
#declare score_holder $_rbit


#> Tag for registered entities
# @within * inv_gui:**
#declare tag inv_gui.Entity

#> Tag for entity identification
# @within * inv_gui:**
#declare tag inv_gui.Filter.0-0
#declare tag inv_gui.Filter.1-0
#declare tag inv_gui.Filter.2-0
#declare tag inv_gui.Filter.3-0
#declare tag inv_gui.Filter.4-0
#declare tag inv_gui.Filter.5-0
#declare tag inv_gui.Filter.6-0
#declare tag inv_gui.Filter.7-0
#declare tag inv_gui.Filter.8-0
#declare tag inv_gui.Filter.9-0
#declare tag inv_gui.Filter.10-0
#declare tag inv_gui.Filter.11-0
#declare tag inv_gui.Filter.12-0
#declare tag inv_gui.Filter.13-0
#declare tag inv_gui.Filter.14-0
#declare tag inv_gui.Filter.15-0
#declare tag inv_gui.Filter.0-1
#declare tag inv_gui.Filter.1-1
#declare tag inv_gui.Filter.2-1
#declare tag inv_gui.Filter.3-1
#declare tag inv_gui.Filter.4-1
#declare tag inv_gui.Filter.5-1
#declare tag inv_gui.Filter.6-1
#declare tag inv_gui.Filter.7-1
#declare tag inv_gui.Filter.8-1
#declare tag inv_gui.Filter.9-1
#declare tag inv_gui.Filter.10-1
#declare tag inv_gui.Filter.11-1
#declare tag inv_gui.Filter.12-1
#declare tag inv_gui.Filter.13-1
#declare tag inv_gui.Filter.14-1
#declare tag inv_gui.Filter.15-1


#> advancement
# @within * inv_gui:**
#declare advancement inv_gui:on_container_open

#> item_modifier
# @within * inv_gui:**
#declare item_modifier inv_gui:set_listener

#> tag/item
# @within * inv_gui:**
#declare tag/item inv_gui:all


#> OhMyDat
# @within * inv_gui:**
#declare storage oh_my_dat:
#declare tag/function oh_my_dat:please

#> CloseDetector
# @within * inv_gui:**
#declare predicate open:chest_minecart
#declare predicate open:ender_chest


# @public
#declare function inv_gui:api/refresh_menu
#declare function inv_gui:api/fill_row
#declare function inv_gui:api/sound


# @public
#declare function inv_gui:api/fill_border
#declare function inv_gui:api/actionbar
#declare function inv_gui:api/paginate


# @public
#declare function inv_gui:api/title
#declare function inv_gui:api/fill_checker
#declare function inv_gui:api/page_controls
