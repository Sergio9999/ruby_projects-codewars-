require 'pry'

def narcissistic?(value)
  arr = value.to_s.split('').map! { |i| i.to_i }
  result = 0
  size = arr.size
  arr.each do |i|
    if size == 1
      result += i
    else
      result += i ** arr.last
    end
  end
  result
  true ? result == value : false
  # puts "#{result} is nascissistic" if value == result
end
puts narcissistic?(1634)
puts narcissistic?(5)
puts narcissistic?(153)
puts narcissistic?(24)