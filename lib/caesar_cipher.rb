def caesar_cipher(string,number)

  if string.class != String
    return "Vous n'avez pas rentré une string en variable n°1"
  elsif number.class != Integer
    return "Vous n'avez pas rentré un Integer en variable n°2"
  end

  return string.chars.map!{|car| 
    if car.ord == 32 || car.ord == 33
      car
    elsif car != car.capitalize 
      if (car.ord + number) <= "z".ord
        (car.ord+number).chr
      else
        (car.ord+number-26).chr
      end
    elsif car == car.capitalize 
      if (car.ord + number) <= "Z".ord
        (car.ord+number).chr
      else
        (car.ord+number-26).chr
      end
    end
  }.join("")
end 

#Truc trouvé par Bulle sur internet, plus condensé
def caesar_cipher2(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter = non_caps.merge(caps)
  
  string.chars.map { |c| encrypter.fetch(c, c) }.join
end
