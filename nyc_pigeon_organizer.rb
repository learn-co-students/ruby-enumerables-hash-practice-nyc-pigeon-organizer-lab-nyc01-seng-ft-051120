require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

final = {}

data.each do |attribute_name, attribute|
    attribute.each do |style, names_array|
      names_array.each do |name|
        if final[name] == nil 
           final[name] = {}
        end
        if final[name][attribute_name] == nil 
           final[name][attribute_name] = []
        end
        final[name][attribute_name].push(style.to_s)
    end 
  end
end
final
end