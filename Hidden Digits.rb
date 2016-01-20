def hidden_digits(line)
  result = line.select{|x| x =~ /[a-j0-9]/}.map{|x| x =~ /[a-j]/ ? (x.ord - 97).to_s : x}.join('')
  result.length > 0 ? result : 'NONE'
end

ARGF.lines do |line|
  puts hidden_digits(line.split(''))
end