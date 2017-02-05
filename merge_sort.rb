def merge_sort(list)

end

def merge(first, second)
	result = []
	until first.empty? || second.empty?
		if first[0] < second[0]
			result << first[0]
			first = first[1..-1]
		else
			result << second[0]
			second = second[1..-1]
		end
	end
	result << first + second
	return result
end

puts merge([1, 2, 4, 8], [3, 5, 6, 7])