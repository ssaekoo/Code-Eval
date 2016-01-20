def reverse_words(str)
	return if str.nil?
	str.split().reverse.join(' ')
end

File.open(ARGV[0]).each_line do |line|
	puts reverse_words(line)
end