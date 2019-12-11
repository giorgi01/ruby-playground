#1
class Student
#2
	def initialize(name, last_name, age, id)
		@name = name
		@last_name = last_name
		@age = age
		@id = id
	end

	def say_something
		@name + ': something!'
	end
#4
	def age_is_odd
		@age.odd?
	end
end

student1 = Student.new('Giorgi', 'Tamarashvili', 19, 01)
student2 = Student.new('Name', 'Surname', 29, 02)
student3 = Student.new('Other_name', 'Other_surname', 39, 03)

#3
arr = [student1, student2, student3]

#5
int_arr = [1, 2, 3, 4, 5]

#6
sum_= 0
int_arr.each {|x| sum_+=x}
puts sum_

#7
asterisk = ' *'
(1...5).each do |i|
	if i.odd?
		puts asterisk*4
	else
		puts ' ' + asterisk*3
	end
end


=begin
#8v1
(0..12).each do |i|
  j = i % 9
  if j < 4
    puts ' ' * j + '*'
  elsif j > 4
  	puts ' ' * (-j % 4) + '*'
  end
end
=end
#-----------------------------

#8v2
i = 1
2.times do
  while i < 4
    puts " "*i + "*"
    if i == 3
    	i+=1
    	puts " "*i + "*"
    else
    	i+=1	
    end
  end
  3.downto(0) do
    puts " "*i + "*"
    i-=1
  end
end


#9
(1..50).each {|i| puts i*i if i.even? }

#10
def arraya_sum(arr)
	if arr.empty?
		return 0
	else 
		sum_ = 0
		arr.each {|i| sum_+=i}
		sum_
	end
end

puts arraya_sum([])
puts arraya_sum(int_arr)

#11
def array_2_sum(arr)
	if arr.length > 1
		return arr.max(2).sum
	arr1[0]
	end
end

puts array_2_sum([1,3,4,5])

#12
def array_to_sum_to_n(arr, n)
	arr.each {|i| return true if arr.include?(n-i)}
	false
end

puts array_to_sum_to_n([1,2,4,5], 5)

#13
def hash_has_key(hsh, key)
	hsh[key] != nil
end

puts hash_has_key({'key' => 'value'}, 'key1')

#14
hsh = {
	'one' => '1',
	'two' => '2',
	'three' => '3'
}

hsh.keys.each {|i| hsh[i] = hsh[i].to_i}

p hsh

#15
def array_to_hash(arr)
	hsh = {}
	arr.each_with_index do |x, i|
		hsh[i] = x
	end
	hsh
end

puts array_to_hash(['one', 'two', 'three'])
