# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is size of one word and m is number of words
# Space complexity: O(1)

def reverse_sentence(my_sentence)
  #STRING REVERSE
  #edge cases
  return nil if my_sentence == nil || my_sentence == ""

  smaller_index = 0
  larger_index = my_sentence.length - 1

  until smaller_index > larger_index
    temp = my_sentence[smaller_index]
    my_sentence[smaller_index] = my_sentence[larger_index]
    my_sentence[larger_index] = temp
    smaller_index += 1
    larger_index -= 1
  end

  #REVERSE STRINGS IN EACH WORD
  tracking_index = 0

  until tracking_index > my_sentence.length - 1
    smaller_index = tracking_index

    #until tracker hits a space, then assign smaller and larger index to flip
    until my_sentence[tracking_index] == " " || my_sentence[tracking_index] == nil
      tracking_index += 1
    end

    larger_index = tracking_index - 1

    until smaller_index > larger_index
      temp = my_sentence[smaller_index]
      my_sentence[smaller_index] = my_sentence[larger_index]
      my_sentence[larger_index] = temp
      smaller_index += 1
      larger_index -= 1
    end
    tracking_index += 1
  end

  return my_sentence
end
