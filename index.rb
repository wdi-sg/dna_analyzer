dna = "GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG"

#qn1
dna_array = dna.split('')
# puts dna_array.uniq.count

#qn2
count_a_bases = dna_array.count { |x| x.include? "A" }
# puts count_a_bases

#qn3
octet = dna_array.each_slice(8).to_a
# puts octet.uniq.count

#qn4
overlapping = dna.chars.each_cons(8).map(&:join)
# puts overlapping.uniq.count

#qn5
complement = dna_array.map do |x|
    if x == "A"
        "T"
    elsif x == "T"
        "A"
    elsif x == "C"
        "G"
    else x == "G"
        "C"
    end
end

reverse_complement = complement.reverse
# print reverse_complement