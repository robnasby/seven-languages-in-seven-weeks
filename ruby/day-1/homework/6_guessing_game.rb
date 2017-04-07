puts 'Welcome to the guessing game!'
puts

number_range = 1..100
prng = Random.new
my_number = prng.rand(number_range)

puts "I'm thinking of a number between #{number_range.min} and #{number_range.max}..."
puts

while true
  print '==> '
  guess = Integer(gets) rescue nil
  next unless guess

  case
  when guess < my_number
    puts 'Too small'
  when guess > my_number
    puts 'Too big'
  else
    puts 'You got it!'
    break      
  end
end
