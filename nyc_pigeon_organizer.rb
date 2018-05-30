require "pry"

def nyc_pigeon_organizer(data)
  new_ar = []
  
  new_hash = Hash.new{|hsh,key| hsh[key] = {} }
#h['k1'].store 'a',1
#h['k1'].store 'b',1
  
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




nyc_pigeon_organizer(pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
})