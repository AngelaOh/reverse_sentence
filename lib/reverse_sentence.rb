# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def string_reverse(my_string)
  if my_string == nil || my_string == ""
    return nil
  else
    smaller_index = 0
    larger_index = (my_string.length - 1)

    until smaller_index > larger_index
      temp = my_string[smaller_index]
      my_string[smaller_index] = my_string[larger_index]
      my_string[larger_index] = temp
      smaller_index += 1
      larger_index -= 1
    end
    return my_string
  end
end

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  #this finds last index of last word
  first_index = 0
  tracking_index = 0
  last_word_index = my_words.length - 1
  if my_words[last_word_index] == " "
    until my_words[last_word_index] != " "
      last_word_index -= 1
    end
  end
  #this finds first letter index if leading spaces
  if my_words[0] == " "
    until my_words[tracking_index] != " "
      first_index = (tracking_index + 1)
      tracking_index += 1
    end
  end
  until tracking_index > my_words.length - 1
    if my_words[tracking_index] == " " && my_words[tracking_index - 1] != " "
      last_index = tracking_index - 1
      reversed_word = string_reverse(my_words[first_index..last_index])
      my_words[first_index..last_index] = reversed_word
      first_index = tracking_index + 1
      if my_words[first_index] == " "
        until my_words[first_index] != " "
          first_index += 1
        end
      end
    elsif tracking_index == last_word_index
      last_index = tracking_index
      reversed_word = string_reverse(my_words[first_index..last_index])
      my_words[first_index..last_index] = reversed_word
      break
    end
    tracking_index += 1
  end
  return my_words
end

def reverse_sentence(my_sentence)
  # reverse_words(my_sentence)
  return string_reverse(reverse_words(my_sentence))
end

# test_string = "Hi  bye "
# puts reverse_sentence(test_string)
