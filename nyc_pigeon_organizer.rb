def nyc_pigeon_organizer(data)
 new_hash = Hash.new{|hsh,key| hsh[key] = {} }
  
  data.collect do |key_one, bulk_data|
    bulk_data.collect do |key_two, names|
      names.collect do |name|
        
        if new_hash[name][key_one]
          new_hash[name][key_one] << key_two.to_s
          
        else
          new_hash[name].store(key_one, [key_two.to_s])
        
      end
    end
  end
  end
      new_hash
  end




