class Book

	attr_reader :title

	def title=(new_title)
		lower_case = %w(and the a an in of)
		words = new_title.split.map { |word| 
			
			if lower_case.include? word
				word.downcase
			else 
				word.capitalize
			end
		}
		words[0].capitalize!
		@title = words.join(" ")
		
	end
end

