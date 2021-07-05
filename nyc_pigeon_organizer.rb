def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, value|
    value.each do |attribute_types, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][attributes] == nil
          pigeon_list[name][attributes] = []
        end
        pigeon_list[name][attributes].push(attribute_types.to_s)
      end
    end 
  end
  pigeon_list
end