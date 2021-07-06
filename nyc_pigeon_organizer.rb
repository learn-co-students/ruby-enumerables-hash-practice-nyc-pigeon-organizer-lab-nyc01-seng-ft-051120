def nyc_pigeon_organizer(pigeon_data) #begining of method , "data" is the parameter in the methdod "data" represents the entire hash
                                #and all the arrays which are in the hash
  new_hash = {} #new_hash is an empty hash the empty curly brackets represent a new hash, we want to return this at the end
  pigeon_data.each do |key,value| #the hash "pigeon_data" will be looped thru via the .each method, looping thru the "key" and "value" arguments in the hash
    value.each do |new_value, names|# the argument "value" will be looped thru via the .each method, looping thru "new_value" and "names" in the hash
      names.each do |name| # the argument "names" will be looped thru via the .each method, looping thru the "name" in the hash

        if !new_hash[name] #if
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end
