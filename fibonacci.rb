def fibs(n)
	fib_nums = [1, 1]
	(n-2).times do |p|
		fib_nums = fib_nums + [fib_nums[-1]+fib_nums[-2]]
	end
	return fib_nums
end

def fibs_rec(n, fib_nums = [1, 1])
	next_fib = [fib_nums[-1] + fib_nums[-2]]
	return (fib_nums.size == n) ? fib_nums : fibs_rec(n, fib_nums + next_fib)
end

#puts fibs(10)
puts fibs_rec(10)