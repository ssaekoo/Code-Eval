def sum_of_digits(str)
	str.split('').map(&:to_i).inject(:+)
end

File.open(ARGV[0]).each_line do |line|
	puts sum_of_digits(line)
end