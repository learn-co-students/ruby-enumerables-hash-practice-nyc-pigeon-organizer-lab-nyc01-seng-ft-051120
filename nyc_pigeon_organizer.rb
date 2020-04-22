def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |color_gender_lives, value|
    value.each do |attributes, array|
      array.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end

        if new_hash[name][color_gender_lives] == nil
          new_hash[name][color_gender_lives] = []
        end
        new_hash[name][color_gender_lives] << attributes.to_s
      end
    end
  end
new_hash
end
