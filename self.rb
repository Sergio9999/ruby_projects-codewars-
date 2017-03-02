require 'rubygems'
require 'pry'

def min_two_sum(numbers)
  arr = numbers.sort
  sum = arr[0] + arr[1]
  sum
end
min_two_sum([18, 14, 2, 19])

def min_two_sum_new(numbers)
  arr = numbers.sort[0..1].inject(:+)
  arr
#  arr = numbers.sort.take(2).reduce(:+)
end
min_two_sum_new([18, 14, 2, 19])

def openOrSenior(data)
  data.map { |value| Member.new(value).category }
end

class Member
  def initialize(data)
    @age = data.first
    @handicap = data.last
  end

  def category
    if @age >= 55 && @handicap >= 7
      puts 'Senior'
    else
      puts 'Open'
    end
  end
end
openOrSenior([[45, 12], [55, 21], [19, -2], [104, 20], [77, 14]])

def circle(data)
  data.each do |value|
    Member.new(value).category
  end
end

circle([[45, 12], [55, 21], [19, -2], [104, 20], [77, 14]])

def digital_root(n)
  n = n.to_s.split('')
  arr = n.map { |i| i.to_i }
  sum = 0
  arr.each do |i|
    sum += i
  end
  puts sum
end

digital_root(5971890456)
digital_root(0)
digital_root(2)

