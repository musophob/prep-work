# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  letters = string.split("").sort
  i = 0
  winner = "letters[0]"
  winner_count = 0
  while i < letters.length
    i2 = 1
    count = 1
    while i2 < letters.length
      if letters[i+i2] == letters[i]
        count += 1
      end
      i2 += 1
    end
    if count > winner_count 
      winner = letters[i]
      winner_count = count
    end
    i2 = 1
    i += 1
  end
  return [winner, winner_count]
end
puts most_common_letter("aacb")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
