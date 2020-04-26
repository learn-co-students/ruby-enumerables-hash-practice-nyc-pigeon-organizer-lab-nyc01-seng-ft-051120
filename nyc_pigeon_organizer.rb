require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  result=data.reduce({}) { |element, (key, value)|
  value.count{|n|
    element[n]=key
  }
    element
    }
  result
end
