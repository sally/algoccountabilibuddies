=begin
  NOT MY SOLUTION, had to look up the answer. But tested heavily in IRB to understand how this works.

  https://github.com/knaidu/coding_katas/blob/master/sorting/top_scores.rb
=end

def sort_scores(ary_of_scores, highest_possible_score)
  scores_count = [0] * highest_possible_score

  ary_of_scores.each do |score|
    scores_count[score] += 1
  end

  sorted_scores = []

  scores_count.each_with_index do |count, idx|
    count.times { sorted_scores << idx }
  end

  sorted_scores
end


###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

highest_possible_score = 100
p sort_scores([37, 89, 41, 65, 91, 53], highest_possible_score)
# returns [37, 41, 53, 65, 89, 91]
