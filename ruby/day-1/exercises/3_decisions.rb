x = 4
x < 5
x <= 4
x > 4
false.class
true.class

x = 4
puts 'This appears to be false.' unless x == 4
puts 'This appears to be true.' if x == 4
if x == 4
  puts 'This appears to be true.'
end
unless x == 4
  puts 'This appears to be false.'
else
  puts 'This appears to be true.'
end
puts 'This appears to be true.' if not true
puts 'This appears to be true.' if !true

x = x + 1 while x < 10
x
x = x - 1 until x == 1
x
while x < 10
  x = x + 1
  puts x
end

puts 'This appears to be true.' if 1
puts 'This appears to be true.' if 'random string'
puts 'This appears to be true.' if 0
puts 'This appears to be true.' if true
puts 'This appears to be true.' if false
puts 'This appears to be true.' if nil

true and false
true or false
false && false
true && this_wil_cause_an_error
false && this_wil_cause_an_error
true or this_wil_cause_an_error
true || this_wil_cause_an_error
true | this_wil_cause_an_error
true | false
