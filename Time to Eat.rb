def time_to_eat(line)
	line.split().sort.reverse.join(' ')
end

ARGF.lines do |line|
  puts time_to_eat(line)
end