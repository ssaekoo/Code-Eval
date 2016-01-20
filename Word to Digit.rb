def word_to_digits(line)
  words = { "zero" => '0',
            "one" => '1',
            "two" => '2',
            "three" => '3',
            "four" => '4',
            "five" => '5',
            "six" => '6',
            "seven" => '7',
            "eight" => '8',
            "nine" => '9'
            }
  line.map{|x| words[x]}.join()
end

ARGF.lines do |line|
  puts word_to_digits(line.split(';'))
end