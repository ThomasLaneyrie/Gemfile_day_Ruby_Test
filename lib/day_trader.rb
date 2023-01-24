def day_trader(arr)
  max = 0
  day_to_buy = 0
  day_to_sell = 0

  arr.each_with_index do |n, index|
    for i in index+1..arr.length
      if arr[i] != nil 
        if arr[i] - n > max
          day_to_buy = index
          day_to_sell = i
          max = arr[i] - n
        end
      end
    end
  end

  return array_final=[day_to_buy, day_to_sell]

end