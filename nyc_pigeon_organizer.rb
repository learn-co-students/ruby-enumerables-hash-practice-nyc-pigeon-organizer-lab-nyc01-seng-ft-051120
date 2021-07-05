=begin def nyc_pigeon_organizer(data)
  new_data = {}
  new_data
end
=end


def nyc_pigeon_organizer(data)
  new_data_list = {}

  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        new_data_list[name] ||= {}
        new_data_list[name][attribute_name] ||= []
        new_data_list[name][attribute_name].push(attribute_value.to_s)
      end
    end 
  end

  new_data_list
end


