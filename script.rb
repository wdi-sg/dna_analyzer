$😀 = 'GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG'

puts $😀.size

def 😎
  $😀.split('').uniq.size
end

def 😘(😙)
  $😀.scan(😙).size
end

def 🤗
  $😀.scan(/......../).uniq.size
end

def 🤨
  tmp = []
  (0..$😀.size-7).each do |i|
    tmp << $😀[i..i+7]
  end
  tmp.uniq.size
end


def 🙄
  $😀.gsub(/./, 'G' => 'C', 'C' => 'G', 'A' => 'T', 'T' => 'A')
end

puts 😎
puts 😘("A")
puts 🤗
puts 🤨
puts 🙄