def clean_up_words(line)
  line.split().map{|y| y.downcase}.join(' ')
end

ARGF.lines do |line|
  puts clean_up_words(line.gsub(/[^a-zA-Z]/, ' '))
end