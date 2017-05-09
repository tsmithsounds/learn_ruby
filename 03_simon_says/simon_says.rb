include Enumerable

def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text, n = 2)
	([text] * n).join(" ")
end

def start_of_word(text, n)
	position = n-1
	text[0..position]
end

def first_word(text)
	word = text.split(" ")
	word[0]
end

def titleize(text)
	words = text.split.map do |word|
		if ["and", "the", "over"].include?(word)
			word.downcase
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end

