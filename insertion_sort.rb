unsorted_character_list = [2,8,1,9,5,3,6,7,4]
#unsorted_character_list = ["d", "b", "a", "c"]
sorted_character_list = []


unsorted_character_list.each do |char|
  if sorted_character_list.empty?
    sorted_character_list << char
  elsif char > sorted_character_list.last
      sorted_character_list << char
  elsif char < sorted_character_list.first
      sorted_character_list.insert(0, char)
  else
    i = 0
    sorted_character_list.each do
      if char < sorted_character_list[i]
        sorted_character_list.insert(i, char)
      elsif char == sorted_character_list[i]
        break
      else
        i += 1
      end
    end
  end
end

puts sorted_character_list
