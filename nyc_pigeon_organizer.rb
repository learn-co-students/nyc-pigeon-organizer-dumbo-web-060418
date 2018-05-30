def nyc_pigeon_organizer(data)
  # write your code here!

  pigeon_hash = {}

  data.each do |attributes, values|
    values.each do |labels, names|
      names.each do |name|
        if pigeon_hash.keys.include?(name)
          nil
        else
          pigeon_hash[name] = {}
        end
        if pigeon_hash[name][attributes]
          pigeon_hash[name][attributes] << labels.to_s
        else
          pigeon_hash[name][attributes] = []
          pigeon_hash[name][attributes] << labels.to_s
        end
      end
    end
  end
  return pigeon_hash
end
