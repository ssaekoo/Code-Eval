def find_the_highest_score(line)
  grid = line.split(' | ').map{|x| x.split()}
  scores = []
  grid[0].length.times do |y|
  	scores << grid.collect{|z| z[y].to_i}.max.to_s
  end
  scores.join(' ')
end

ARGF.lines do |line|
  puts find_the_highest_score(line)
end