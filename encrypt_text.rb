require 'pry'

def encrypt(text, n)
  puts text if n == 0
  n.times do
    evenArr, oddArr = [], []
    arr = text.split('').each_with_index.map { |val, i| i.odd? ? oddArr.push(val) : evenArr.push(val) }
    text = oddArr.join('') + evenArr.join('')
  end
  puts text
end

def decrypt(encrypted_text, n)
  puts encrypted_text if n == 0
  size_part = encrypted_text.size / 2
  n.times do
    evenArr, oddArr, allArr = [], [], []
    encrypted_text.chars.each_with_index do |val, index|
      index < size_part ? oddArr << val : evenArr << val
    end
    (0...encrypted_text.length).each do |index| # if ... encrypted_text.length - 1
      index.even? ? allArr << evenArr.shift : allArr << oddArr.shift
    end
    encrypted_text = allArr.join('')
    allArr.clear
  end
  encrypted_text
end

decrypt('hsi  etTi sats!', 1)
encrypt('This is a test!', 4)

# def encrypt(text, n)
#   puts text if n == 0
#   n.times do
#     arr = Array.new
#     text.chars.each_with_index.map { |val, index| index.even? ? arr.push(val) : arr.insert((index/2), val) }
#     text = arr.join
#   end
#   puts text
# end