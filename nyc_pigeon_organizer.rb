def nyc_pigeon_organizer(data)
  final_hash = {} 
  data.each do |first_level, other_first|
    other_first.each do |category, array|
      array.each do |name|
        final_hash[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end
  x = final_hash.keys 
  data[:color].each do |bird_color, name| 
    name.each do |bird|
    x.each do |item| 
      if bird === item 
        final_hash[item][:color] << bird_color.to_s 
      end 
    end
    end  
  end 
data[:gender].each do |bird_gender, name|
  name.each do |bird|
    x.each do |item| 
      if bird === item 
        final_hash[item][:gender] << bird_gender.to_s
      end 
    end
  end
end
data[:lives].each do |bird_lives, name|
  name.each do |bird| 
    x.each do |item| 
      if bird === item 
        final_hash[item][:lives] << bird_lives.to_s 
      end
    end
  end
end
return final_hash
end
