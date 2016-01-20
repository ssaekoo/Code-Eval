def read_more(line)
	last_space = line[0..40].rindex(' ')
	return line[0..40] if last_space.nil? && line.length > 55
	line.length > 55 ? line[0..last_space].strip + '... <Read More>' : line.strip
end

File.open(ARGV[0]).each_line do |line|
	puts read_more(line)
end