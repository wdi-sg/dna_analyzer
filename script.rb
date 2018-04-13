require 'set'

dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
numBases = dna.length
puts numBases

# Questions:
# How many unique bases (letters)?
puts 4

# How many "A" bases?
countA = 0
dna.each_char { |ch|
  countA += 1 if ch == "A"
}
puts "Num of A bases: #{countA}"

# How many unique, non-overlaping, complete "octets"? (octet = group of 8 bases)
uniqueNonOver = Set[]
startIdx = 0 # start of octet
endIdx = 7 # end of octet
until endIdx >= dna.length
  uniqueNonOver << dna[startIdx..endIdx]
  # puts dna[startIdx..endIdx]
  startIdx += 8
  endIdx += 8
end
puts "Num of unique, non-overlaping, complete 'octets': #{uniqueNonOver.length}"

# How many unique, overlapping, complete "octets"?
uniqueOver = Set[]
startIdx = 0 # start of octet
endIdx = 7 # end of octet
until endIdx >= dna.length
  uniqueOver << dna[startIdx..endIdx]
  # puts dna[startIdx..endIdx]
  startIdx += 1
  endIdx += 1
end
puts "Num of unique, overlaping, complete 'octets': #{uniqueOver.length}"

# What is the reverse complement? (G <=> C; A <=> T)
reverse = ""
dna.each_char {|ch|
  if ch == "G"
    reverse += "C"
  elsif ch == "C"
    reverse += "G"
  elsif ch == "A"
    reverse += "T"
  elsif ch == "T"
    reverse += "A"
  end
}
puts "Reverse complement: #{reverse}"

# Generate some dna. Write code to run the above on it.

# How many unique octets exist for the DNA bases?
