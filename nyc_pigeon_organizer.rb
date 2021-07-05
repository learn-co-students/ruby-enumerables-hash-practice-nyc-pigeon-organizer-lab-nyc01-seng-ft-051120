def nyc_pigeon_organizer(data)
  # write your code here!
  organized_hash = {}
  data.each do |about, hash|
    hash.each do |details, array|
      array.each do |name|
        
        if !organized_hash[name]
          organized_hash[name] = {}
        end
        
        if !organized_hash[name][about]
          organized_hash[name][about] = []
        end
        
        organized_hash[name][about].push(details.to_s)
        
      end
    end
  end
  organized_hash
end
