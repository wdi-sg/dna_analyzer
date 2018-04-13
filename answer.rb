require 'byebug'

puts "test"

dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"

dna_arr = dna.chars


def unique_bases
	dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
	dna_arr = dna.chars
	puts dna_arr.uniq.length
end

def number_of_base(letter)
	dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
	dna_arr = dna.chars
	puts dna_arr.count(letter)
end

def unique_octet
	dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
	dna_arr = dna.scan(/.{1,8}/)
	puts dna_arr.uniq.length
end

def unique_overlapping_octet
	dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
	dna_arr = dna.chars
	sorted = []
	
	for i in 0..dna_arr.length
		dna_octet = dna.scan(/.{8}/)
		dna_octet.select do |octet|
			sorted.push(octet)
		end
		dna_arr.shift
		dna = dna_arr.join
	end
	puts sorted.uniq.length
end











byebug
puts "wow"