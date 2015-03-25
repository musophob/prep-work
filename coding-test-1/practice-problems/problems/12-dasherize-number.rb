# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

  # create an array with each digit in a separate index
  nums = num.to_s.split("")

  # loop through each digit; if it's odd, add dashes to both sides
  i = 0
  while i < nums.length
    if nums[i].to_i % 2 != 0
      nums[i] = "-" + nums[i] + "-"
    end
    i += 1
  end

  # smash the array back into a string, with the shiny new dashes
  nums = nums.join.split("")

  # check for any nefarious dashes at the beginning/end of the string and 
  # make them go away
  if nums[0] == "-"
    nums.shift
  end
  if
    nums[-1] == "-"
    nums.pop
  end

  # in the event of a double dash, make it a single dash
  i = 0
  while i < nums.length
    if nums[i] == "-" && nums[i+1] == "-"
      nums[i] = ""
    end
    i += 1
  end

  # return an inconspicuous string; go make more coffee
  return nums.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
