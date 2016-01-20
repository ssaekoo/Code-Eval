require 'json'

def json_menu_items(line)
  menu = JSON.parse(line)
  sum = 0
  menu['menu']['items'].select{|x| !x.nil?}.each do |x|
    next if x['label'].nil?
    sum += x['label'].gsub('Label', '').strip.to_i
  end
  sum
end

ARGF.lines do |line|
  puts json_menu_items(line)
end