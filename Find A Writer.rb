def find_a_writer(letters, pos)
	pos.map{|x| letters[x - 1]}.join('')
end

ARGF.lines do |line|
  letters, pos = line.split('|')
  puts find_a_writer(letters, pos.strip.split(' ').map(&:to_i))
end