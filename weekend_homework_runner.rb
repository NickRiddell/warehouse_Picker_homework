require_relative './weekend_homework_functions'

##item at bay "b5"
found_item = bay('b5')
puts "The item at b5 found is #{found_item} expect it to be nail filer"
puts "\n"

##Given an item return the bay that it is in.
found_bay = item('nail filer')
puts "The bay containing the nail filer is #{found_bay} expect it to be b5"
puts "\n"

##Given a list of bays, list the items in those bays
found_items = list_of_items('b5', 'b10', 'b6')
puts "The items found in b5, b10 and b6 are #{found_items} expect it to be nail filer, cookie jar, and tooth paste"
puts "\n"

##Given a list of items find the bays.
found_bays = list_of_bays("rusty nail","shoe lace", "leg warmers")
puts "The bays containing the shoe lace, rusty nail and leg warmers are #{found_bays} expect it to be c1, c9, and c10"
puts "\n"

##Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays
#1)
found_items_1 = list_of_items('b5', 'b10', 'b6')
distance_between_bays = bay_distance('b5', 'b10', 'b6')
puts "The items found in b5, b10 and b6 are #{found_items_1} expect it to be nail filer, cookie jar, and tooth paste and they are #{distance_between_bays} bays apart (expect 5)."
puts "\n"
#1B)
found_items_2 = items_at_bay_2('b3', 'c7', 'c9', 'a3')
distance_between_bays_2 = bay_distance_2('b3', 'c7', 'c9', 'a3')
puts "The items found in b3, c7, c9 and a3 are #{found_items_2} expect it to be picture frame, paint brush, shoe lace, and blouse and they are #{distance_between_bays_2} bays apart (expect 15)."
puts "\n"



#2A)
found_bays = list_of_bays('shoe lace', 'rusty nail', 'leg warmers')
# puts"#{found_bays}"
visit_order = which_way('shoe lace', 'rusty nail', 'leg warmers')
puts "The bays containing the shoe lace, rusty nail and leg warmers are #{found_bays} (expected to be c9, c1, and c10) and should be collected in this order: #{visit_order}"
puts "\n"

#Given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
found_bays_2 = list_of_bays_2("hanger", "deodorant", "candy wrapper", "rubber band")
visit_order_2 = which_way_2("hanger", "deodorant", "candy wrapper", "rubber band")
puts "The hanger, deodorant, candy wrapper and rubber band are in bays #{found_bays_2} respectively and should becollected in the following order #{visit_order_2}"
puts "\n"




