require "pry"
def nyc_pigeon_organizer(data)
nameHash = {}
data.each do |attribute, hash|
  hash.each do |quality, names|
    names.each do |name|
    nameHash[name] ||= {}
    nameHash[name][attribute] ||= []
    nameHash[name][attribute] << quality.to_s
      end
    end
  end
   nameHash
end
