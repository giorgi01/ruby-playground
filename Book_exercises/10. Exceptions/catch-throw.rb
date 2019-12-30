def prompt_and_get(prompt)
	print prompt
	res = readline.chomp
	throw :quit_request if res == "!q"
	res
end

catch :quit_request do
	name = prompt_and_get("Name: ")
	surname = prompt_and_get("Surname: ")
	puts "#{name} #{surname}"
end