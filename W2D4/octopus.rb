# Big O-ctopus and Biggest Fish
#
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
#
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
# Sluggish Octopus
#
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to
#  all other fish lengths

def octopus(fishies)
  longest = ""
  fishies.each do |fish|
    fishies.each do |nemo|
      longest = fish if fish.length > nemo.length && fish.length > longest.length
    end
  end
  longest
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'fiiiissshhhhhh', 'fsh', 'ffiiiiisshh']
# p octopus(fish)

# Dominant Octopus
#
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that
# runs in O(n log n) in the Sorting Demo. Remember that Big O is classified by the dominant term.

def merge_fish(fishies)
  return fishies if fishies.length < 2

  mid = fishies.length/2
  head = merge_fish(fishies[0...mid])
  tail = merge_fish(fishies[mid..-1])
  merge(head, tail)
end

def merge(head, tail)
  if head.empty?
    tail
  elsif tail.empty?
    head
  elsif head.first.length > tail.first.length
    [tail.first] + merge(head, tail[1..-1])
  else
    [head.first] + merge(head[1..-1], tail)
  end
end

def dominant_octopus(fish)
  sorted = merge_fish(fish)
  sorted[-1]
end

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'fiiiissshhhhhh', 'fsh', 'ffiiiiisshh']
p dominant_octopus(fish)

# Clever Octopus
#
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish
# that you have found so far while stepping through the array only once.
#
# Dancing Octopus
#
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in
# the following directions:
#
# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle.
# We can assume that the octopus's eight tentacles are numbered and correspond to
# the tile direction indices.
#
# Slow Dance
#
# Given a tile direction, iterate through a tiles array to return the tentacle number
# (tile index) the octopus must move. This should take O(n) time.
#
# slow_dance("up", tiles_array)
# > 0
#
# slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
#
# Now that the octopus is warmed up, let's help her dance faster. Use a different
# data structure and write a new function so that you can access the tentacle number in O(1) time.
#
# fast_dance("up", new_tiles_data_structure)
# > 0
#
# fast_dance("right-down", new_tiles_data_structure)
# > 3
