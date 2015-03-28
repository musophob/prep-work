# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  letters = string.split("").sort
  idx = 0
  repeats = 0
  while idx < letters.length
    repeat = false
    idx2 = idx + 1
    last_repeat = 0
    while idx2 < letters.length
      if letters[idx2] == letters[idx]
        repeat = true
        last_repeat = idx2
      end
      idx2 += 1
    end
    if repeat == true
      repeats += 1
      idx = last_repeat + 1
    else
      idx += 1
    end
  end
  return repeats
end
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
