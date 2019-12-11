#1
largest_num = 0

(1..999).each do |i|
	(2..999).each do |j|
		if (i*j).to_s == (i*j).to_s.reverse
			largest_num = i*j if i*j > largest_num
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
