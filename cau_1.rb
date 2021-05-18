a = Array.new(10) { rand(1..99) }
b = Array.new(7) { rand(1..99) }
c = rand(1..9)

def common_elements a, b
  a & b
end

class Array
  def except b
    self - b
  end
end

puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"

puts "b #{(b.include?(c) ? "" : "don't ")}contain c"
puts "Common elements: #{common_elements(a, b)}"
puts "a except b: #{a.except(b)}"
