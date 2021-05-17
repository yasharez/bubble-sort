def bubble_sort(array)
  max_loops = array.length - 1
  for i in 0...array.length - 1
    swapped = false
    for j in 0..max_loops
      if array[j + 1] < array[j]
        move_back = array[j + 1]
        move_forward = array[j]
        array[j + 1] = move_forward
        array[j] = move_back
        swapped = true
      end
    end
    max_loops -= 1
    p max_loops
  end
end

bubble_sort([4,3,78,2,0,2])