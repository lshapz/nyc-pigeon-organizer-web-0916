require 'pry' 
pigeon_data = {
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
}

# def nyc_pigeon_organizer(data)
#
# data.each_with_object({}) do |(category, trait_list), pigeon|
# #takes the hash and operates on the top level key and each value
#
#  trait_list.each do |trait, pigeon_list|
#
#     #collects the top level keys and looks for names (values)
#     pigeon_list.each do |name|
#       #takes the names from all the values
#       pigeon[name] ||= {}
#
#       #and makes them into a new hash
#       pigeon[name][category] ||= []
#       binding.pry
#        #and adds arrays in which to put the values
#       pigeon[name][category] << trait.to_s
#       #and fetches the values and puts them in those arrays
#     end
#   end
# end
#
# end
#
# nyc_pigeon_organizer(pigeon_data)


#refactored using {} instead of do/end 


def nyc_pigeon_organizer(data)

data.each_with_object({}) { |(category, trait_list), pigeon|
#takes the hash and operates on the top level key and each value

 trait_list.each  {|trait, pigeon_list|
 
     #collects the top level keys and looks for names (values)
     pigeon_list.each  {|name|
           #takes the names from all the values
           pigeon[name] ||= {}
     
           #and makes them into a new hash
           pigeon[name][category] ||= []
#            #and adds arrays in which to put the values
           pigeon[name][category] << trait.to_s
binding.pry
           #and fetches the values and puts them in those arrays
         }
   }

}
end

nyc_pigeon_organizer(pigeon_data)

