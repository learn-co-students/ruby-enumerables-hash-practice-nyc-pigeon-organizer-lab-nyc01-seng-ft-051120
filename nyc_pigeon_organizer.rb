 require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  
  puts data['gender']
  
  new_list = {}
  names_array = []
  
  data[:gender].each do |key, names|
    names.each do |name|
    new_list[name] = {
      :gender => [key.to_s]
    }  
      
  
    end
  end
  
  data[:lives].each do |key, names|
    names.each do |name|
    new_list[name][:lives] = [] 
    new_list[name][:lives] << key.to_s
    end
  end
  
  data[:color].each do |key, names|
    names.each do |name|
     if new_list[name][:color]
      new_list[name][:color] << key.to_s
    else 
    new_list[name][:color] = []
    new_list[name][:color] << key.to_s
  end
    end
  end
  return new_list
end