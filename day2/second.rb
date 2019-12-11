arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#1
arr1.each do |i|
	puts i
end

#2
arr1.each {|i| puts i if i > 5}

#3
new_arr = []
arr1.each {|i| new_arr.push(i) if i.odd?}

p new_arr

#4
new_arr.append("11")
new_arr.unshift("0")

p new_arr

#5
new_arr.delete("11")
new_arr.append("3")

p new_arr

#6
(0...new_arr.length).each {|i| new_arr[i] = new_arr[i].to_i}
new_arr.uniq!

p new_arr

#7
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|i| i.start_with?('s')}

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|i| i.start_with?('w')}

p arr

#8
fruit_string = "boulder, apple, banana, peach, cow"
fruit_arr = fruit_string.split(",")
fruit_arr.pop
fruit_arr.shift
fruit_arr = fruit_arr.join(",")

p fruit_arr

#9
def with_these_numbers(a, b)
  yield a, b
end

#9 - testcases
with_these_numbers(1, 4) do |first, second|
  puts first + second # Output: 5
end

with_these_numbers(3, 6) do |first, second|
  puts first * second # Output: 18
end

with_these_numbers(12, 3) do |first, second|
  puts first / second # Output: 4
end

#10
class Rectangle
	attr_reader :width, :height

  	def width=(value)
    	if value < 0
      		raise "Width can't be negative!"
    	end
    	@width = value
  	end

  	def height=(value)
    	if value < 0
      		raise "Height can't be negative!"
    	end
    	@height = value
 	end

  private
  def area
    	width * height
  	end
end

class Square < Rectangle

	def width=(value)
    if value < 0
          raise "Width can't be negative!"
    end
    @width = @height = value #გამომდინარე იქიდან რომ კვადრატია
	end

	def height=(value)
    if value < 0
          raise "Height can't be negative!"
    end
		@height = @width = value
	end

  def s_area
    area
  end
end

sq1 = Square.new
sq1.height = 7

puts sq1.s_area # რა თქმა უნდა sq1.area-ს ვერ გამოვიძახებთ, რადგან private მეთოდია
