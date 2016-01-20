def black_card(names, num)
	return names[0] if names.length == 1
	
	names.length < num ? names.delete_at(num % names.length - 1) : names.delete_at(num-1)
	black_card(names, num)
end

ARGF.lines do |line|
  names, num = line.split('|')
  puts black_card(names.strip.split(' '), num.strip.to_i)
end