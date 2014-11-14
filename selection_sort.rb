def selection_sort(array)
  array.each_with_index do |val_j, j|
    index_current_min = index_min(j, array)
    if array[index_current_min] < array[j]
      array[j], array[index_current_min] = array[index_current_min], array[j]
    end
  end
end

def index_min(j, array)
  (j+1...array.length).reduce(j) do |imin,i|
    if array[i] < array[imin]
      i
    else
      imin
    end
  end
end

test = [3,1,6,5,9,10,24,2]

sorted = selection_sort(test.dup)
unless sorted == test.sort
  raise "sorted #{test}, got #{sorted}"
else
  puts "good job sorted #{test}, got #{sorted}"
end



