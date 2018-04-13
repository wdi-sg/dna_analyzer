require("byebug")

dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"


byebug

print dna

#1

#dna.chars.uniq.count

#2

# dna.count("A")

#3 


# dna_cut = dna.scan(/.{1,8}/m)


# dna_cut.each do |item|
# 	frequency = dna_cut.count(item)

# 	pattern = item
# 	if frequency >1
# 		print "#{pattern} happens #{frequency} times."
# 	end
# end


#4
# dna_cut = dna.scan(/.{1,8}/m)
# dna_cut = dna_cut.uniq


# dna_cut.each do |item|
# 	frequency = dna.count(item)
# 	pattern = item

# 	frequency = dna.scan(/(?=#{pattern})/).count
# 	if frequency >1
# 		print "#{pattern} happens #{frequency} times."
# 	end
# end

#5 

# dna.gsub(/[GCAT]/, 'G' => 'C', 'C' => 'G', 'A' => 'T', 'T' => 'A')

#6

# 16.times.map { ['A', 'T', 'C', 'G'].sample }.join

#7 4**8

