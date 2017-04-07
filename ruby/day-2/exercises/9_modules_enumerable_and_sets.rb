'begin' <=> 'end'
'same' <=> 'same'
a = [5, 3, 4, 1]
a.sort
a.any? {|i| i > 6 }
a.any? {|i| i > 4 }
a.all? {|i| i > 4 }
a.all? {|i| i > 0 }
a.collect {|i| i * 2 }
a.select {|i| i % 2 == 0 }
a.select {|i| i % 2 == 1 }
a.max
a.member?(2)

a
a.inject(0) {|sum, i| sum + i }
a.inject {|sum, i| sum + i }
a.inject {|product, i| product * i }

a.inject(0) do |sum, i|
  puts "sum: #{sum}  i: #{i}  sum + i: #{sum + i}"
  sum + i
end
