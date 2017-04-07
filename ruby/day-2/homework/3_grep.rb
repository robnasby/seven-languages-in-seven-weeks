# Write a simple grep that will print lines of a file having any occurrences of a phrase anywhere in that line.
# You will need to do a simple regular expression match and read lines from a file.  (This is surprisingly simple
# in Ruby.)  If you want, include line numbers.
regexp = Regexp.new(ARGV[0])
File.readlines(ARGV[1]).each_with_index {|l, i| puts "#{i + 1}: #{l}" if regexp =~ l }
