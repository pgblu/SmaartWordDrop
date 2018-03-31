require_relative 'generate_array'

file = "/Users/pgblu/Documents/Ruby_Code/SmaartWordDrop/main_dictionary.txt"
words = IO.readlines(file)
generator = LengthGenerator.new

puts "What is the width of the grid?"
width = gets.chomp.to_i
puts "What is the height of the grid?"
height = gets.chomp.to_i
puts "What should be the average word length?"
avg_length = gets.chomp.to_i
puts

word_lengths = generator.generate_weighted_list(height*width, avg_length)
word_list = []
word_lengths.each do |num|
  word_list.push (words
    .select { |word| word.chomp.length == num }
    .sample
    .chomp
  )
end

puts word_lengths
word_list.display
puts
