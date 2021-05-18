a = Array.new(5)
n = a.size

def input a, n
  n.times do |i|
    a[i] = gets.chomp.to_i
    a[i] ||= 0
  end
end

def square e
  return e if [6, 7].include?(e)
  e**2
end

input a, n
puts "sum of a: #{a.sum}"
puts "a square: #{a.map{|e| square(e)}}"
