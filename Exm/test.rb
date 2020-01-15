=begin
#1
h = { true => 'wow'}
a = ['wow']
b = a.dup
puts h[a === b]
=end

=begin
#2
n = Integer(gets.chomp)
m = Integer(gets.chomp)
arr1 = Array.new(n).map {|e| e = gets.chomp}
arr2 = Array.new(m).map {|e| e = gets.chomp}
arr_new = arr1 + arr2
puts arr_new
p arr_new


#3
n = Integer(gets.chomp)
m = Integer(gets.chomp)
arr1 = Array.new(n).map {|e| e = gets.chomp}
arr2 = Array.new(m).map {|e| e = gets.chomp}
arr_new = []
arr1.each {|e| arr_new << e}
arr2.each_with_index do |e, i| 
	if arr_new[i].nil?
		arr_new << e
	else
		arr_new[i].concat(e)
	end
end
p arr_new


#4
n = Integer(gets.chomp)
arr1 = Array.new(n).map {|e| e = gets.chomp.split(',')}
arr1.each do |e|
	if e.include? ('a')
		arr1.delete(e)
	end
end
p arr1.flatten(1)

#5
a = Integer(gets.chomp)
b = Integer(gets.chomp)
c = Integer(gets.chomp)
class Integer

	alias old_plus +
	alias old_mod %

	def *(other)
		old_mod(other)
	end

	def +(other)
		old_plus(old_plus(other))
	end
end

puts a + b * c
=end


#6
=begin
def calc(num)
	calc = lambda do |n| 
 		return n * (num+1) if n.odd?
 		n * num 
 	end
end

a = calc(10)
puts a.call 1
puts a.call 2
puts a.call 3
=end
=begin
#7
n = Integer(gets.chomp)
m = Integer(gets.chomp)
def power_of(n)
	n ** yield 
end
puts power_of(n) { m }
=end

=begin
#8
class Person 

	def initialize(name, last_name, person_id)
		@name = name
		@last_name = last_name
		@person_id = person_id
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end

	def last_name
		@last_name
	end

	def last_name=(new_last_name)
		@last_name = new_last_name
	end

	#person_id ას სჭირდება setter
	def person_id
		@person_id
	end
end

class Student < Person

	def initialize(name, last_name, person_id, gpa, school_name, school_city)
		super(name, last_name, person_id)
		@gpa = gpa
		@school_name = school_name
		@school_city = school_city
	end

	def gpa
		@gpa
	end

	def gpa=(new_gpa)
		@gpa = new_gpa
	end

	private
	def calculate_gpa
		gpa + gpa * 0.1
	end

	def school_name
		@school_name
	end

	def school_name=(new_school_name)
		@school_name = new_school_name
	end

	def school_city
		@school_city
	end

	def school_city=(new_school_city)
		@school_city = new_school_city
	end
end
=end

#9
=begin
n = Integer(gets.chomp)
arr1 = Array.new(n).map {|e| e = Integer(gets.chomp)}
p arr1
p arr1.inject { |product, e| e.even? ? product*e : product }
=end
