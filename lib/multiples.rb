def is_multiple_of_3_or_5?(number)
  if number % 3 == 0 || number % 5 == 0
    return true
  else
    return false
  end
end

def sum_of_3_and_5_multiples(number)
  final_sum = 0 
  for current_number in 1...number
      if is_multiple_of_3_or_5?(current_number) == true
      final_sum = final_sum + current_number
      end
  end
  return final_sum
end
