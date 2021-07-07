require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |color_gender_lives, value|
    value.each do |attribute, pigeons|
      pigeons.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = Hash.new
        end
        if !pigeon_list[name][color_gender_lives]
          pigeon_list[name][color_gender_lives] = Array.new
        end
        pigeon_list[name][color_gender_lives].push(attribute.to_s)
      end
    end
  end

  pigeon_list
end
