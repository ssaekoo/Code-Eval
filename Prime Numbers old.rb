require 'prime'
def prime_numbers(n)
	((1..n.to_i).to_a.select &:prime?).map(&:to_s).join(',')
end

File.open(ARGV[0]).each_line do |line|
	puts prime_numbers(line)
end