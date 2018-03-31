class LengthGenerator
def generate_weighted(avg)
  r = 0
  (2*avg).times do
    r += rand(2)
  end
  r
end

def generate_weighted_list(num, avg)
  list = []
  list.push(generate_weighted(avg))
  while list.inject(:+) <= num do
    list.push(generate_weighted(avg))
  end
  size = list.length
  diff = list.inject(:+) - num
  diff.times do
    list[rand(size)] -= 1
  end
  list
end
end

# test code
# generator = LengthGenerator.new
# (5..15).to_a.each do |value|
#   k = generator.generate_weighted_list(110, value)
#   puts "#{value}: #{k.display}, total: #{k.inject(:+)}"
# end
