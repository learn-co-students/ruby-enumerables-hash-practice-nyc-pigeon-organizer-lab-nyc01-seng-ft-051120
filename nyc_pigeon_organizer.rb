
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data[:color].map do |key, value|
    value_int = 0
    while value_int < data[:color][key].length do
      if pigeon_list[value[value_int]]
        pigeon_list[value[value_int]][:color] << key.to_s
      else
        pigeon_list[value[value_int]] = {:color => [key.to_s], :gender => [], :lives => []}
      end
    value_int += 1
    end
  end


  data[:gender].map do |key, value|
    value_int = 0
    while value_int < data[:gender][key].length do
    pigeon_list[value[value_int]][:gender] << key.to_s
    value_int += 1
    end
  end

  data[:lives].map do |key, value|
    value_int = 0
    while value_int < data[:lives][key].length do
    pigeon_list[value[value_int]][:lives] << key.to_s
    value_int += 1
    end
  end

  pigeon_list
end






#  pigeon_list << {[data][:color].keys[0][0] => }


#    pigeon_list_int = 0
#    while pigeon_list_int < pigeon_list.length do
#      if
#      pigeon_list_int += 1
#      else
#      pigeon_list << {value => :color => [key.to_s], :gender => [], :lives =>}
#    else
#      pigeon_list << {value +
#
#      if pigeon_list.length = 0
#      pigeon_list << {value => :color => [key.to_s], :gender => [], :lives =>}
#      end

#    end
#    i = 0
#    while i < pigeon_list.count do
#      if value == pigeon_list[i]
#    end
#  end








  #  mi == 0
  #  while mi < data[:gender][:male].length do
  #    pigeon_list << {data[:gender][:male] => :color => [], :gender => [], :lives => []}
  #    mi += 1
  #  end

  #  fi == 0
  #  while fi < data[:gender][:female].length do
  #    pigeon_list << {data[:gender][:female] => : :color => [], :gender => [], :lives => []}
  #  end


  #    data[:gender].map do |key, value|
  #hash.invert
  #returns a new hash created by using hash's values as keys and keys as values.
  #data[:color].map do |key, value|
  #  pigeon_list << {value => {:color => [key.to_s]}} if pigeon_list.count = 0
  #  i = 0
  #  while i < pigeon_list.count do
  #    if value == pigeon_list[i]

  #  end
  #  elsif pigeon_list[i] == value

  #    while i < pigeon_list.count do
  #    if value == pigeon_list.keys[i]
  #      pigeon_list[value][:color] << key.to_s
  #    end
  #    i += 1
  #    end
  #      pigeon_list << {value => {:color => [key.to_s]}}
  #    end
  #    i += 1

  #end

  #  data[:gender].map do |k, v|
  #    if value == pigeon_list.keys[0]

  #  end

  #  data[:lives].map do |k, v|

  #  end

  #data.each { |k,v| h[k] = v}

#end
