require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_by_name = {}
  data.each do |categories, values|
    values.each do |specifics, names|
      names.each do |individuals|
        if pigeon_by_name[individuals] == nil 
          pigeon_by_name[individuals] = {}
          end
          if pigeon_by_name[individuals][categories] == nil
            pigeon_by_name[individuals][categories] = []
          end
          pigeon_by_name[individuals][categories].push(specifics.to_s)
        end
      end
    end
    pigeon_by_name
  end


 