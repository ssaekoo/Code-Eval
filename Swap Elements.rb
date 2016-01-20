def swap_elements(seq, swaps)
	swaps.each {|y| seq[y[0]], seq[y[1]] = seq[y[1]], seq[y[0]]}
	seq.join(' ')
end

ARGF.lines do |line|
  seq, swaps = line.split(' : ')
  puts swap_elements(seq.split(' '), swaps.split(', ').map{|x| x.split('-').map(&:to_i)})
end