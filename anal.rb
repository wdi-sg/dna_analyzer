#Some human DNA may be found inside.
require "byebug"

#Parsing
dna = ARGV[0].upcase
holding_array = dna.split("")

#initialising
base_counter = {}
compliment = []

#Counting bases
for base in holding_array
	unless base_counter[:"#{base}"]
		base_counter[:"#{base}"] = 1
	else
		base_counter[:"#{base}"] += 1
	end 
end

#Outputs counts
puts "Base Counter"
puts base_counter

#Generate reverse compliment
for char in holding_array
	if char == "G"
		compliment << "C"
	elsif char == "C"
		compliment << "G"
	elsif char == "A"
		compliment << "T"
	elsif char == "T"
		compliment << "A"
	end
end
puts "Compliment DNA"
puts compliment.join

#byebug
puts "Analysis done."