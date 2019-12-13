class MyNumber

	attr_accessor :num, :num_str, :palindrome_5, :palindrome_6

	def initialize(num)
		@num = num
		@num_str = num.to_s
	end

	def six_digit_palindrome
		palindrome_6 = Integer(num_str + num_str.reverse)
		palindrome_6
	end

	def five_digit_palindrome
		palindrome_5 = Integer(num_str + num_str[1] + num_str[0])
		palindrome_5
	end

	def three_digits_multiple?(number)
		root = Math.sqrt(number).to_i
    		return false if root > 999
    		root.downto(100) do |item|
        		return false if number / item > 999
        		return true if number % item == 0
    		end
    		false
	end

	def six_d_multiple_palindrome?
		three_digits_multiple?(six_digit_palindrome)
	end

	def five_d_multiple_palindrome?
		three_digits_multiple?(five_digit_palindrome)
	end

end

number = MyNumber.new(906)
puts number.six_digit_palindrome
puts number.five_digit_palindrome
puts number.six_d_multiple_palindrome?
puts number.five_d_multiple_palindrome?
