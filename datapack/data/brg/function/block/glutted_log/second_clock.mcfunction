# Commands ran every second off a glutted log
execute if predicate brg:random_chance/0.1 run function brg:block/glutted_log/convert/attempt
