class Analyzer
	def initialize(input)
		@dna = input
	end

	def checkAll
		puts "dna inputted: #{@dna}"
		self.uniqueBase
		self.checkBaseNum('A')
		self.uniqueOctetCount
		self.uniqueOverlapCount
		self.complement
	end

	def uniqueBase
		puts "no. of unique bases: #{@dna.split(//).uniq.length}"
	end

	def checkBaseNum(base)
		puts "no. of unique #{base} bases: #{@dna.count(base)}"
	end

	def uniqueOctetCount
		puts "no. of unique octets: #{@dna.scan(/......../).uniq!.length}"
	end

	def uniqueOverlapCount
		output = []
		@dna.chars.each_cons(8) do |cons|
			output << cons.join
		end
		puts "no. of unique overlap octets: #{output.uniq!.length}"
	end

	def complement
		puts "complement: " + @dna.gsub(/[GACT]/, 'G' => 'C', 'A' => 'T','C' => 'G','T' => 'A')
	end
end

newAnalyzer = Analyzer.new("GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG")
newAnalyzer.checkAll
