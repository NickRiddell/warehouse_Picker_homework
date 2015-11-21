require 'pry-byebug'

WAREHOUSE = [
  {
    content: "rubber band",
    bay: "a10",
    position: 1,
  },
  {
    content: "glow stick",
    bay: "a9",
    position: 2,
  },
  {
    content: "model car",
    bay: "a8",
    position: 3,
  },
  {
    content: "bookmark",
    bay: "a7",
    position: 4,
  },
  {
    content: "shovel",
    bay: "a6",
    position: 5,
  },
  {
    content: "rubber duck",
    bay: "a5",
    position: 6,
  },
  {
    content: "hanger",
    bay: "a4",
    position: 7,
  },
  {
    content: "blouse",
    bay: "a3",
    position: 8,
  },
  {
    content: "stop sign",
    bay: "a2",
    position: 9,
  },
  {
    content: "needle",
    bay: "a1",
    position: 10,
  },
  {
    content: "rusty nail",
    bay: "c1",
    position: 11,
  },
  {
    content: "drill press",
    bay: "c2",
    position: 12,
  },
  {
    content: "chalk",
    bay: "c3",
    position: 13,
  },
  {
    content: "word search",
    bay: "c4",
    position: 14,
  },
  {
    content: "thermometer",
    bay: "c5",
    position: 15,
  },
  {
    content: "face wash",
    bay: "c6",
    position: 16,
  },
  {
    content: "paint brush",
    bay: "c7",
    position: 17,
  },
  {
    content: "candy wrapper",
    bay: "c8",
    position: 18,
  },
  {
    content: "shoe lace",
    bay: "c9",
    position: 19,
  },
  {
    content: "leg warmers",
    bay: "c10",
    position: 20,
  },
  {
    content: "tyre swing",
    bay: "b1",
    position: 21,
  },
  {
    content: "sharpie",
    bay: "b2",
    position: 22,
  },
  {
    content: "picture frame",
    bay: "b3",
    position: 23,
  },
  {
    content: "photo album",
    bay: "b4",
    position: 24,
  },
  {
    content: "nail filer",
    bay: "b5",
    position: 25,
  },
  {
    content: "tooth paste",
    bay: "b6",
    position: 26,
  },
  {
    content: "bookmark",
    bay: "b7",
    position: 27,
  },
  {
    content: "tissue box",
    bay: "b8",
    position: 28,
  },
  {
    content: "deodorant",
    bay: "b9",
    position: 29,
  },
  {
    content: "cookie jar",
    bay: "b10",
    position: 30,
  },
]

# def item_at_bay(bay_number)
#   for item in WAREHOUSE
#     if item[:bay] == bay_number
#       return item[:content]
#     end
#   end
# end

#******************QUESTION 1******************************#
#Attempt number one above before I got my head round blocks and enumerators

#Step 1, define the item_at_bay method, with the arguement bay_number
def bay(bay_number)
#Step 2, apply the .detect enumerable method to the WAREHOUSE array. This is used to detect the element that returns true for a collection. This is provided by the block. In the block the bay parameter is used to feed in each :bay hash and when it matches b5 (using the bay_number parameter), the :content hash is returned.
  WAREHOUSE.detect { |bay| bay[:bay] == bay_number} [:content]
end



#******************QUESTION 2******************************#
#As above, but the :content hash is being used to return a :bay hash
def item(content)
  WAREHOUSE.detect { |item| item[:content] == content} [:bay]
end



#******************QUESTION 3******************************#
def list_of_items (bay_number1, bay_number2, bay_number3)
  # Let's take all the parameters and store in an array.
  items = [bay_number1, bay_number2, bay_number3]
  # Let's go over items one by one and call the item_at_bay method
  items.map { |bay| bay(bay)  }
end


#******************QUESTION 4******************************#
#As above, the item_in_bay method is called one by on on the created bays array. The .map enumerable method creates a new array in that instant, but has no effect on the original, in this case returning items in specified bays.
def list_of_bays (item1, item2, item3)
  bays = [item1, item2, item3]
  bays.map { |item| item(item)  }
end

#******************ADVANCED Q1A***********************#

def bay_distance (bay1, bay2, bay3)
  items = [bay1, bay2, bay3]
  lowest, highest = items.map { |item| find_bay_index(item) }.minmax
  highest - lowest
end

def find_bay_index(bay)
  WAREHOUSE.index { |location| location[:bay] == bay }
end

#******************ADVANCED Q1B***********************#

def item_at_bay_2(bay_number)
  WAREHOUSE.detect { |bay| bay[:bay] == bay_number} [:content]
end

def items_at_bay_2 (bay_number1, bay_number2, bay_number3, bay_number4)
  items_2 = [bay_number1, bay_number2, bay_number3, bay_number4]
  items_2.map { |bay| item_at_bay_2(bay)  }
end

def bay_distance_2(bay1, bay2, bay3, bay4)
  items_2 = [bay1, bay2, bay3, bay4]
  lowest, highest = items_2.map { |item| find_bay_index(item) }.minmax
  highest - lowest
end


#******************ADVANCED Q2A***********************#

def which_way (item1, item2, item3)
  bays = [item1, item2, item3]
  index = bays.map { |item| item(item)  }.sort_by { |item| find_bay_index(item) }
end

#******************ADVANCED Q2B***********************#
def list_of_bays_2 (item1, item2, item3, item4)
  bays = [item1, item2, item3, item4]
  bays.map { |item| item(item)  }
end

def which_way_2 (item1, item2, item3, item4)
  bays = [item1, item2, item3, item4]
  index = bays.map { |i| item(i)  }.sort_by { |item| find_bay_index(item) }
end









