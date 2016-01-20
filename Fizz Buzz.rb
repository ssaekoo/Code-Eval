def fizz_buzz(first, second, max)
	(1..max).to_a.map{|x| x % first == 0 && x % second == 0 ? 'FB' : x % first == 0 ? 'F' : x % second == 0 ? 'B' : x.to_s}.join(' ')
end

ARGF.lines do |line|
	first, second, max = line.split(' ').map(&:to_i)
	puts fizz_buzz(first, second, max)
end