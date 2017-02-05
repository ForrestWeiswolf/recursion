def merge_sort(list)
	len = list.size
	if len <= 1
		return list
	else
		first = list[0...(len/2)]
		first = merge_sort(first)

		second = list[(len/2)..-1]
		second = merge_sort(second)

		return merge(first, second)
	end
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
	result = result + first + second
	return result
end

puts merge_sort([7, 6, 7, 12, 67, 63, 112, 0, 4, -2, 011])