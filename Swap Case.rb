def swap_case(line)
   line.split('').map do |x| 
      if x =~ /[a-z]/
         (x.ord - 32).chr
      elsif x =~ /[A-Z]/
         (x.ord + 32).chr
      else
         x
      end
   end.join('')
end

File.open(ARGV[0]).each_line do |line|
	puts swap_case(line)
end