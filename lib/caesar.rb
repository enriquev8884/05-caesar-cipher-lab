$array_abc_down = [*?a..?z]
$array_abc_upper = [*?A..?Z]
def caesar_encode(string, offset)
  string.split("").map do |character|
    if $array_abc_down.include?(character)
      new_character = $array_abc_down[($array_abc_down.index(character)+offset)%26]
        elsif $array_abc_upper.include?(character)
      new_character = $array_abc_upper[($array_abc_upper.index(character)+offset)%26]
    else
      character      
    end
  end.join("")
end
# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "Offset?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)


def caesar_decode(string, offset)
 string.split("").map do |character|
    if $array_abc_down.include?(character)
      new_character = $array_abc_down[($array_abc_down.index(character)-offset)%26]
        elsif $array_abc_upper.include?(character)
      new_character = $array_abc_upper[($array_abc_upper.index(character)-offset)%26]
    else
      character      
    end
  end.join("")    
end