def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = Hash.new

  data.each { |pig_key,pig_val|
    pig_val.each { |attribute_key,attribute_value|
      attribute_value.each { |name|
        if !organized_data.has_key?(name)
          bird_template = Hash.new
          data.keys.each{ |bird_attribute|
            bird_template[bird_attribute] = Array.new
          }
          organized_data[name] = bird_template
        end
        organized_data[name][pig_key] << attribute_key.to_s
      }
    }
  }


  organized_data
end
