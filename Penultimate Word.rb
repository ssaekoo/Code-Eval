def penultimate_word(line)
	line.split(' ')[-2]
end


ARGF.lines do |line|
  puts penultimate_word(line)
end