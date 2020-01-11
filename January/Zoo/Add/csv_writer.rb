require 'csv'

class CsvWriter

	def make_database(filename, *column_names)
		CSV.open(filename, 'wb') {|csv| csv << column_names}
	end

	def append_to_database(filename, args)
		CSV.open(filename, "a") {|csv| csv << args}
	end
end

cc = CsvWriter.new
