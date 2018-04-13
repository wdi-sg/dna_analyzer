dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"
dna_arr = dna.split('')
#1
dna_arr.uniq.length

#2
count = 0
dna_arr.each { |base| count += 1 if base == 'A' }

#3
dna_arr.length / 8

#4
dna_arr.length - 7

#5
output_dna = ""
dna.each_char do |base|
  case base
    when 'G'
      output_dna += 'C'
    when 'C'
      output_dna += 'G'
    when 'A'
      output_dna += 'T'
    when 'T'
      output_dna += 'A'
  end
end

#6
def generate_dna(num_bases)
  dna = ""
  bases = ['G', 'A', 'T', 'C']
  num_bases.times do |t|
    random = rand(4)
    dna += bases[random]
  end
  return dna
end

#7
4^8