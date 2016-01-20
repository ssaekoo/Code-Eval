def column_names(num)
  [alpha_character(num / 26**2), alpha_character((num / 26) % 26), alpha_character(num % 26, true)].join('')
end
  
def alpha_character(num, flag = false)
  if flag
  	num == 0 ? 'Z' : (64 + num).chr
  elsif num == 0
  	nil
  else
  	(64 + num).chr
  end
end

ARGF.lines do |line|
  puts column_names(line.to_i)
end