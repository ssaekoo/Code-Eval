def real_fake(line)
  cc_test = line.gsub(' ', '').split('').map(&:to_i).each_with_index.map{|x, idx| idx % 2 == 0 ? x * 2 : x}.inject(:+)
  cc_test % 10 == 0 ? 'Real' : 'Fake'
end

ARGF.lines do |line|
  puts real_fake(line)
end