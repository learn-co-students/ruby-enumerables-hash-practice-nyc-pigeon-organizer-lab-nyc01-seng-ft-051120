require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  #result=data.collect{ |element, (key, value)|
  #value.each{ |key1, value1)|

  # value1.count{ |array_value|
    # element[:array_value]=value1
  # }
  #
  # }
  #   element
  #   }
  # result
result={}
  data[:gender].each{ |key, value|
  value.each{ |name|
    result[name]={
      :color =>[],
      :gender =>[key.to_s],
      :lives=>[]
    }

  }

  }
  data[:color].each{ |key, value|
    value.each{ |name|
result[name][:color].push(key.to_s)

    }

  }
data[:lives].each{ |key, value|
  value.each{|name|
    result[name][:lives].push(key.to_s)

  }
#binding.pry
}
result
end
