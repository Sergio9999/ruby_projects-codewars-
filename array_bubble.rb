require 'pry'

arr = [5, 20, 3, 11, 1, 17, 3, 12, 8, 10]

def bubble_sort(arr)
  swap = true
  size = arr.length - 1
  while swap
    swap = false
    for i in 0...size
      swap |= arr[i] > arr[i + 1]
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
    size -= 1
  end
  puts arr.join(' ')
end
bubble_sort(arr)
