require "pry"

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
  # write your code here!
  pigeon_data = Hash.new
  #creates new Hash for data to live in/
  # binding.pry
  
  data.each do |category, trait_list|
    #iterate through top level hash category keys with trait_list values
    # binding.pry
    
    trait_list.each do |trait, pigeon_list|
      #iterates through each 2nd level hash aka trait keys with pigeonlist values
      
      pigeon_list.each do |pigeon|
        #iterates through array which is values of 2nd level hash 
        # binding.pry
        
        if !pigeon_data.keys.include?(pigeon) then pigeon_data[pigeon] = {} end
          #creates a 2nd level hash for the pigeon if didn't already exist 
          # binding.pry
          
        if !pigeon_data[pigeon].keys.include?(category) then pigeon_data[pigeon][category] = [] end
          #populates hash with keys(traits) which have arrays as values
          # binding.pry
          
        pigeon_data[pigeon][category] << trait.to_s
          
        #populates arrays with specific traits 
      end
    end
  end
  pigeon_data
end

nyc_pigeon_organizer(pigeon_data)