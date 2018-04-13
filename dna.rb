

dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"

# Qn 1
puts dna.chars.to_a.uniq.length

# Qn 2
puts dna.count "A"

# Qn 3
full_dna_array = dna.split("")
octet_array = []
octet = []
string_position = 0
i = 0
while i <= 8 && string_position <= full_dna_array.length do
      if i == 8
            i = 0 
            octet_array << octet.join("")
            octet = [] 
            
      else      
      octet << full_dna_array[string_position] 
      i += 1
      string_position += 1
      end
end
puts octet_array.uniq.length

# Qn 4
full_dna_array = dna.split("")
octet_array = []
octet = []
string_position = 0
while string_position <= full_dna_array.length - 8 do
      octet << full_dna_array[string_position] 
      octet << full_dna_array[string_position + 1]
      octet << full_dna_array[string_position + 2]
      octet << full_dna_array[string_position + 3]
      octet << full_dna_array[string_position + 4]
      octet << full_dna_array[string_position + 5]
      octet << full_dna_array[string_position + 6]
      octet << full_dna_array[string_position + 7]

      octet_array << octet.join("")
      octet = []
      string_position += 1
end
puts octet_array.uniq.length

# Qn 5
full_dna_array = dna.split("")
reverse_complement_array = []
full_dna_array.each do |base|
      if base == "G"
            reverse_complement_array << "C"
      elsif base == "C"
            reverse_complement_array << "G"
      elsif base == "A"
            reverse_complement_array << "T"
      elsif base == "T"
            reverse_complement_array << "A"
      end
end
puts reverse_complement_array.join("")

# Qn 6
random_dna_array = []
bases = ["G", "C", "T", "A"]
max_length = 1000000
i = 0
while i <= max_length do
      random_dna_array << bases[rand(4)]
      i += 1
end
puts random_dna_array.join("")

# Qn 7
full_dna_array = random_dna_array
octet_array = []
octet = []
string_position = 0
while string_position <= full_dna_array.length - 8 do
      octet << full_dna_array[string_position] 
      octet << full_dna_array[string_position + 1]
      octet << full_dna_array[string_position + 2]
      octet << full_dna_array[string_position + 3]
      octet << full_dna_array[string_position + 4]
      octet << full_dna_array[string_position + 5]
      octet << full_dna_array[string_position + 6]
      octet << full_dna_array[string_position + 7]

      octet_array << octet.join("")
      octet = []
      string_position += 1
end
puts octet_array.uniq.length