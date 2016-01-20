require 'prime'
puts ((1..1000).to_a.select &:prime?).select {|x| x == x.to_s.reverse.to_i}.max