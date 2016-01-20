def swap_numbers(line)
	line.split().each {|x| x[0], x[-1] = x[-1], x[0]}.join(' ')
end

ARGF.lines do |line|
  puts swap_numbers(line)
end