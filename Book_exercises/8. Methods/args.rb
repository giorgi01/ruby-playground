def custom_sum(*args)
	res = 0
	args.each {|arg| res += arg}
	res
end

def custom_product(*args)
	res = 1
	args.each {|arg| res *= arg}
	res
end

def binpow(num, pow=2)
	if pow == 0
		return 1
	end
	if pow.odd?
		binpow(num, pow-1) * num
	else
		res = binpow(num, pow/2)
		res * res
	end
end

p binpow(5)