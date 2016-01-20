def simple_sorting(line)
	line.split(' ').map(&:to_f).sort.map{|x| "%.3f" % x}.join(' ')
end

File.open(ARGV[0]).each_line do |line|
	puts simple_sorting(line)
end