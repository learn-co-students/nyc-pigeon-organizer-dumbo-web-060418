require 'pry'
def nyc_pigeon_organizer(data)
  #reorganizes hash to put pigeon names at the top level
  #and then puts their data in attribute / value pairs

  #This hash will collect all the new pigeon data
   all_pigeons = {}

   data.each do |attribute, info|
    info.each do |details, names|
      names.each do |name|
        #this collects the names of each pigeon and gives them their own hash
          all_pigeons[name] ||= {}
        #this makes all attributes a key, for each pigeon in the  all_pigeons hash
          all_pigeons[name][attribute] ||= []
        #this adds all details as a value, for each pigeon in the all_pigeons hash
          all_pigeons[name][attribute] << details.to_s
      end
    end
  end






  #This puts all the pigeons names into the new array
    # data.each do | attributes, info|
    #    info.each do |item, bird|
    #       bird.each do |name|
    #         #binding.pry
    #         #This converts each pigeon to it's own hash & pushes it to new hash
    #         pigeon_names[name] = {}
    #       end
    #    end
    # end
  #
  # #I will iterate through each of the attributes to pull out the data associated with each pigeon
     # data.each do | attributes, info|
     #    info.each do |item, bird|
     #      binding.pry
     #      #this makes old attribute a key and pushes it to bird hash
     #      if pigeon_names[name].has_key?(attributes) == false
     #        pigeon_names[name][attributes] = []
     #      end
     #      #this makes old item a value and pushes it to bird hash
     #      if pigeon_names[name][attributes].has_value?(item) == false
     #        pigeon_names[name][attributes] << [item]
     #      end
     #    end #ends info
     # end #ends data
#Instead of writing if statements, you can do ||= which does it for you.
#Essentially, if you write hash[name] ||= [], what Ruby will do is check to see if hash[name] has an array already,
#and if not, it'll instantiate with an empty array


all_pigeons
end #ends method
