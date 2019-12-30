begin
	k = 2/0
	k += 'one'
rescue TypeError, NameError => boom
	print "String doesn't compile: #{boom}\n"
rescue ZeroDivisionError => bang
	print "Error running script: #{bang}\n"
ensure
	print "End of the programe."
end