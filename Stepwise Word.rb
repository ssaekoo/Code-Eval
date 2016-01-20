def stepwise_word(line)
  line.max_by(&:length).split('').each_with_index.map{|x, i| '*' * i + x}.join(' ')
end

ARGF.lines do |line|
  puts stepwise_word(line.strip.split())
end