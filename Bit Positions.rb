def bit(num, pos1, pos2)
	num.to_s(2)[-pos1] == num.to_s(2)[-pos2]
end

File.open(ARGV[0]).each_line do |line|
	x = line.split(',').map(&:to_i)
	p bit(x[0], x[1], x[2])
end