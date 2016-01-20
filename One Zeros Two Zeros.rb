def one_zeros_two_zeros(zeros, max_range)
  binaries = (1..max_range).to_a.map{|x| x.to_s(2)}
  binaries.map do |y|
    [y, (0...y.length).find_all{ |i| y[i] == '0'}.length]
  end.select{|z| z[1] == zeros}.count
end

ARGF.lines do |line|
  zeros, max_range = line.split().map(&:to_i)
  puts one_zeros_two_zeros(zeros, max_range)
end