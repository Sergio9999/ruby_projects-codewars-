require 'pry'

def spinWords(string)
  array = string.split(' ')
  newArr = []
  array.each do |i|
    i.length >= 5 ? newArr.push(i.reverse) : newArr.push(i)
  end
  puts newArr.join(' ')
end
spinWords('Hey fellow warriors')
spinWords('This is a test')
spinWords('This is another test')

def spinWords(string)
  array = string.split(' ').map! { |i| i.length >= 5 ? i.reverse : i }.join(' ')
  puts array
end
spinWords('Hey fellow warriors')
spinWords('This is a test')
spinWords('This is another test')

"hello".each_char {|c| print c, ' ' }