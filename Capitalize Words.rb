def capitalize_word(line)
	line.split().map{|x| x[0].capitalize + x[1..-1]}.join(' ')
end

File.open(ARGV[0]).each_line do |line|
	puts capitalize_word(line)
end