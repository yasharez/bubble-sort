def bubble_sort(array)
  max_loops = array.length - 1
  for i in 0...array.length - 1
    swapped = false
    for j in 0..max_loops - 1
      if array[j + 1].to_i < array[j]
        move_back = array[j + 1]
        move_forward = array[j]
        array[j + 1] = move_forward
        array[j] = move_back
        swapped = true
      end
    end
    max_loops -= 1
    if swapped == false
      return array
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])