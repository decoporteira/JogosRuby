n = gets.strip

for i in 0..10 do
  total = i.to_i * n.to_i
  puts " #{i} X #{n} = #{total}"
end
