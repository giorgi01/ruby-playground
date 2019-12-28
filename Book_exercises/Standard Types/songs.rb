require 'csv'
Song = Struct.new(:title, :name, :length)

songs = []

CSV.foreach('songdata.csv') do |row|
	title, name, length = row.map {|e| e.squeeze}
	songs << Song.new(title, name, length)
end

p songs