require "pry"

def nyc_pigeon_organizer(data)
  reordered_hash = Hash.new
  data.each do |key, inner_hash|      # iterates thru outer hash aka data
    inner_hash.each do |color, name_array|   #iterates thru first key hash aka color 
    
    # binding.pry 
      name_array.each do |name|
        if !reordered_hash[name]
              reordered_hash[name] = {}
        end
         
          if !reordered_hash[name][key]
              reordered_hash[name][key] = []
          end 
          
          reordered_hash[name][key].push(color.to_s)
         
         
            #value of key color is an array - iterate thru names arr 
            #go back out to data, each key becomes a new key/val for new hash
      
      end 
    end     
  end 
  reordered_hash
  
end



 # data = { key: {innerKey :array - value in here is the name array[i]
      
    # }
    
    #}
    
  # iterate over hash 
  # access key/val = innerHash 
  # iterate thru innerHash to get each key/val --> val = array 
  #iterate thru array and return array[i] for each name 
  #create new Hash 