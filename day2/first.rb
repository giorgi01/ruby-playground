#1
largest_num = 0

(100..999).each do |i|
	(i..999).each do |j|
		product = i * j
		if (product).to_s == (product).to_s.reverse
			largest_num = product if product > largest_num
		end
	end
end

puts largest_num

#2
res = 1
(1..20).each do |i|
	res = (res * i)/res.gcd(i) #gcd - უდიდესი საერთო გამყოფი
end
puts res

#3 მეთოდს ვაბრუნებინებ სამ რიცხვს, სამკუთხედის გვერდებს.
def pythagorean_triplet(sum_)
	(1..sum_).each do |a|
		(2..sum_).each do |b|
			c = sum_ - a - b
			return a, b, c if a**2 + b**2 == c**2 && b > a && c > b
		end
	end
end

# p pythagorean_triplet(1000)
puts pythagorean_triplet(1000).inject(:*)


def generate_palindrome(first, last)
	arr = []
	(first..last).each do |i|
		i_str = i.to_s
		arr.push((i_str + i_str.reverse).to_i)
		arr.push((i_str + i_str[1] + i_str[0]).to_i)
	end
		arr
end

p generate_palindrome(100, 999)
