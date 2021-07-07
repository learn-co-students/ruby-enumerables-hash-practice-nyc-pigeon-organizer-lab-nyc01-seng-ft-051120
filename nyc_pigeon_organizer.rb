def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |info, value|
    value.each do |spec, names|
      names.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
        end
        if pigeons[name][info] == nil
          pigeons[name][info] = []
        end
        pigeons[name][info].push(spec.to_s)
      end
    end 
  end
  pigeons
end
