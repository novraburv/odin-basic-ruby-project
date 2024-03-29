def bubble_sort(arr)
  swapped = true
  while swapped do
    swapped = false
    for i in (0..arr.length-2)
      if arr[i] > arr[i+1]
        tmp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = tmp
        swapped = true
      end
    end
  end
  arr
end

puts bubble_sort([4,3,78,2,0,2]).to_s
#=> [0,2,2,3,4,78]
