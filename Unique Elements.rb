def unique_elements(line)
	line.strip.split(',').uniq.join(',')
end

File.open(ARGV[0]).each_line do |line|
	puts unique_elements(line)
end