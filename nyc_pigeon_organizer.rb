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
array = []  
names = data.values.map {|attribute_hash| attribute_hash.values}.flatten.uniq
hash = {}
initial_structure = names.each_with_object({}) do |name, hash|
  
  hash[name] = {color: [], gender: [], lives: []}
end

      names.each do |pigeon|
        data[:color].each do |color, corr_pigeon_list|
        initial_structure[pigeon][:color] << color.to_s  if corr_pigeon_list.include?(pigeon) 
        end 
  
        data[:lives].each do |lives, corr_pigeon_list|
        initial_structure[pigeon][:lives] << lives.to_s  if corr_pigeon_list.include?(pigeon) 
        end 
    
        data[:gender].each do |gender, corr_pigeon_list|
        initial_structure[pigeon][:gender] << gender.to_s  if corr_pigeon_list.include?(pigeon) 
        end 
    end 
    
          
          initial_structure
       
end 

puts nyc_pigeon_organizer(pigeon_data)

#
#  # understanding the nested layers
#  #   how to handle different data
#  #   scope of variables
#  #   writing down the thought process
#  #     can make the code more clear
#  #   naming the block variables
#  #
#  # A. Problem Solving
#  #   rephrase the problem
#  #   think about how we solve this problem without code
#  #     think of an analogy
#  #     how would this work in real life
#  #
#  # B. Translating this into code
#  #   REJECT  information - just to get to core
#  #   Coerce - think about the data structure that we want
