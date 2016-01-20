def mixed_content(line)
  alpha = line.select {|x| /^[A-z]+$/ =~ x}.join(',')
  num = line.select {|y| /^[0-9]*$/ =~ y}.join(',')
  alpha + (alpha.length > 0 && num.length > 0 ? '|' : '') + num
end

ARGF.lines do |line|
  puts mixed_content(line.strip.split(','))
end