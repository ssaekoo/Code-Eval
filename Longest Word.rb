def longest_word(line)
	line.split(' ').map{|x| [x.length,x]}.sort{|x,y| y[0] <=> x[0]}[0][1]
end

ARGF.lines do |line|
  puts longest_word(line)
end