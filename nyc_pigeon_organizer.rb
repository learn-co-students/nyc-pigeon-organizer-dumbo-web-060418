def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |key, value|
    value.each do |data, names|
      names.each do |name|
          pigeons[name] ||= {}
          pigeons[name][key] ||= []
          pigeons[name][key] << data.to_s
        end
  end
  end
  pigeons
end