data remove storage brg:macro root
$data modify storage brg:macro root.page set from storage brg:storage root.seedbook[$(page)]

function brg:item/seedbook/advancement_check with storage brg:macro root.page
