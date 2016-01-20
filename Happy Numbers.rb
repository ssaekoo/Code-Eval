def happy_number(line, past_nums = [])
   case curr_value = line.to_s.chars.map{|x| x.to_i ** 2}.inject(:+)
      when 1
         1
      when *past_nums
         0
      else
         past_nums << curr_value
         happy_number(curr_value, past_nums)
   end
end

ARGF.lines do |line|
  puts happy_number(line)
end