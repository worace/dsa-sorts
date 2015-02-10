
require "benchmark"
def quick_sort(array)
  array
end

test = [3,1,6,5,9,10,24,2]

sorted = quick_sort(test)
unless sorted == test.sort
  raise "sorted #{test}, got #{sorted}"
end
