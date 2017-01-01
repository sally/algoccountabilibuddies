# Source: Interview Cake
#
# You rank players in the game from highest to lowest score. So far you're using an algorithm that sorts in `O(Nlog(N))` time, but players are complaining that their rankings aren't updated fast enough. You need a faster sorting algorithm.
#
# Write a function that takes:
#
# * an array of unsorted_scores
# * the `highest_possible_score` in the game
# * and returns a sorted array of scores in less than `O(Nlog(N))` time.
#
# For example:
#
# ```ruby
# unsorted_scores = [37, 89, 41, 65, 91, 53]
# HIGHEST_POSSIBLE_SCORE = 100
#
# sort_scores(unsorted_scores, HIGHEST_POSSIBLE_SCORE)
# # returns [37, 41, 53, 65, 89, 91]
# ```
#
# We’re defining `n` as the number of `unsorted_scores` because we’re expecting the number of players to keep climbing.
#
# And we'll treat `highest_possible_score` as a constant instead of factoring it into our big O time and space costs, because the highest possible score isn’t going to change.

def sort_scores(score_arr, highest_possible_score)
  # initiate empty arr with highest possible score as length
  histogram = Array.new(highest_possible_score, 0)

  # iterate through the score array and increase the count for every occurance
  # of a certain score for the histogram
  score_arr.each do |score|
    histogram[score - 1] += 1
  end

  # initiate empty array to store sorted score
  sorted_scores = []

  # push the index of the histogram into the sorted score array
  # based on the number of occurances
  histogram.each_with_index do |occurances, idx|
    occurances.times do |x|
      sorted_scores.push(idx + 1)
    end
  end

  sorted_scores
end


#vroom
p sort_scores([37, 89, 41, 65, 91, 53], 100)
