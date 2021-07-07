require 'pry'

#def nyc_pigeon_organizer(data)
#  # write your code here!
#  new_data = {}
#
#  def get_names(data)
#    data[:color].reduce([]) do |memo, (k, v)|
#      memo << v
#      memo.flatten.uniq
#    end
#  end
#
#  names = get_names(data)
#
#  def add_names(data, new_data, names)
#    names.each do |bird|
#      new_data[bird] = {:color => [], :gender => [], :lives => []}
#    end
#  end
#
#  add_names(data, new_data, names)
#
#  def add_color(data, new_data, names)
#    new_data.each do |name, color|
#      data[:color].each do |color_name, name_array|
#        new_data[name][:color] << color_name.to_s if name_array.include?(name)
#      end
#    end
#  end
#
#  def add_gender(data, new_data, names)
#    new_data.each do |name, gender|
#      data[:gender].each do |gender_type, name_array|
#        new_data[name][:gender] << gender_type.to_s if name_array.include?(name)
#      end
#    end
#  end
#
#
#  def add_lives(data, new_data, names)
#    new_data.each do |name, lives|
#      data[:lives].each do |location, name_array|
#        new_data[name][:lives] << location.to_s if name_array.include?(name)
#      end
#    end
#  end
#
#  def add_attributes(data, new_data, names)
#    new_data.each do |name, attribute|
#      data[attribute].each do |attribute_name, name_array|
#        new_data[name][attribute] << location.to_s if name_array.include?(name)
#    end
#  end
#
#  def add_attributes(data, new_data, names)
#    add_color(data, new_data, names)
#    add_gender(data, new_data, names)
#    add_lives(data, new_data, names)
#  end
#
#  add_attributes(data, new_data, names)
#
#  new_data
#end

def nyc_pigeon_organizer(data)
  new_hash = {}

  data.each do |attribute, subattribute|
    subattribute.each do |subattribute, names|
      names.each do |name|

        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(attribute)
          new_hash[name][attribute] = []
        end

        new_hash[name][attribute] << subattribute.to_s
      end
    end
  end
  new_hash
end
