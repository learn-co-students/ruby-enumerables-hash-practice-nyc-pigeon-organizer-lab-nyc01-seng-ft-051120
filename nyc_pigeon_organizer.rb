def nyc_pigeon_organizer(data)
  pigeon = {}
  
  data.keys.each do |property| 
    data[property].keys.each do |value|
      data[property][value].each do |name|
        pigeon[name] = pigeon[name] || {}  
        pigeon[name][property] = pigeon[name][property] || []
        pigeon[name][property] << value.to_s 
      end
    end
  end
 pigeon
end
end
