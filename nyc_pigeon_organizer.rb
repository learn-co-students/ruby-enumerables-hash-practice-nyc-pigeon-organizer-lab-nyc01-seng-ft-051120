require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  until data.empty? do
    dir_path = []
    # current_dir is current working directory
    current_dir = data
    # Dig down to the end of the first branch
    # Similar to cd into a directory path
    # stop if value does not contain a hash or and array
    until current_dir.any? { |x| x.class != (Array || Hash) }
      dir_path << current_dir.flatten[0]
      current_dir = current_dir.flatten[1]
    end
    # Take each pigeon name and create a new
    # branch structure using directory path values
    current_dir.each { |pigeon_name| 
      #  If no name already in return hash create name and branch
      if !new_hash[pigeon_name]
        new_hash[pigeon_name] = { dir_path[0] => [dir_path[1].to_s] }
      # Does first level category exisit?
      elsif new_hash[pigeon_name]
        # If name exsist in has already push value into name
        if new_hash[pigeon_name][dir_path[0]]
          new_hash[pigeon_name][dir_path[0]] << dir_path[1].to_s
        # if not create branch 
        else
          new_hash[pigeon_name][dir_path[0]] = [dir_path[1].to_s]
        end
      end
    }
    # delete path once done with it
    data[dir_path[0]].delete(dir_path[1])  
    # delete parent path if empty
    data.delete(dir_path[0]) if data[dir_path[0]].empty?
  end
  new_hash
end
