require "benchmark"
def bubble_sort(array)
  swapped = true
  while swapped do
    swapped = false
    0.upto(array.length - 1).each do |index|
      if (index < array.length - 1) && array[index] > array[index + 1]
        array[index],array[index+1] = array[index+1],array[index]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end


def selection_sort(array)
end

test = [3,1,6,5,9,10,24,2]

sorted = selection_sort(test)
unless sorted == test.sort
  raise "sorted #{test}, got #{sorted}"
end

sorted = bubble_sort(test)

unless sorted == test.sort
  raise "sorted #{test}, got #{sorted}"
end

big_test_count = 4000
big_test = (1..big_test_count).map { rand(big_test_count) }

puts Benchmark.measure { bubble_sort(big_test) }
