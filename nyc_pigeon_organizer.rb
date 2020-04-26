require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  result=data.collect{ |element, (key, value)|
  value.collect{ |element1, (key1, value1)|
  value1.count{ |array_value|
    element[:array_value]=value1
  }
element1
  }
    element
    }
  result
end
