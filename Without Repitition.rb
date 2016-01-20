def without_repetition(line)
  new_line = []
  line.each do |x|
    new_word = x[0]
    (1...x.length).each do |y|
      new_word << x[y] if x[y] != x[y-1]
    end
    new_line << new_word
  end
  new_line.join(' ')
end  

ARGF.lines do |line|
  puts without_repetition(line.split())
end