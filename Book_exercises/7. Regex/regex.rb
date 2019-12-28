def search_n_count(file, word)
	counter = 0
	pattern = Regexp.new(word, Regexp::IGNORECASE)
	File.open(file, 'r').each do |line| 
		counter += 1 if line =~ pattern
	end
	"Quantity of word '#{word}' in this file is #{counter}"
end

puts search_n_count('text.txt', 'lorem')
puts search_n_count('text.txt', 'ipsum')


def show_regexp(string, pattern)
	match = pattern.match(string)
	if match
		"#{match.pre_match}->#{match[0]}<-#{match.post_match}"
	else
	"no match"
	end
end

puts show_regexp('someone', /one/i) # i - case insensitive
puts show_regexp('someOnE', /one/i)