require 'prime'

class My_Primes
	attr_accessor :limit
	attr_reader :myprimes
	
	def initialize(limit)
		@limit = limit
	end
	
	def stringed
		@myprimes.select {|x| x < @limit}.map(&:to_s).join(',')
	end
end
	
def prime_numbers(n)
	((1..n.to_i).to_a.select &:prime?).map(&:to_s).join(',')
end

a = My_Primes.new(1)

File.open(ARGV[0]).each_line do |line|
	a.limit = line.to_i
	puts a.
end