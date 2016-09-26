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

def nyc_pigeon_organizer(data)

data.each_with_object({}) do |(key, h), result|
#takes the hash and operates on the top level key and each value

            binding.pry 
 h.each do |value, names|
    
    #collects the top level keys and looks for names (values)
    names.each do |name|
      #takes the names from all the values 
      result[name] ||= {} 

      #and makes them into a new hash
      result[name][key] ||= []
      #and adds arrays in which to put the values
      result[name][key] << value.to_s
      #and fetches the values and puts them in those arrays 
    end
  end
end 

end

nyc_pigeon_organizer(pigeon_data)