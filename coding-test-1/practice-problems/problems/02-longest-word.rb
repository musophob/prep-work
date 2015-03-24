# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)

  # split up the sentence in a new var
  words = sentence.split

  # set counter & make a home for our lucky winner
  i = 0
  longest = ""

  # loop through each word
  while i < (words.length)

    # compare the length of each word to the current longest
    if words[i].length > longest.length
      # set winner to current word
      longest = words[i]
    end

    # rinse, repeat (maybe)
    i = i + 1
  end

  # give our lucky winner the keys to his new home
  return longest
end

puts longest_word("This is a sentence")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
