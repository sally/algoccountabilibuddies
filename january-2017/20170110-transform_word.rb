# Source: LiveRamp Interview
#
# Given a source word, target word and an English dictionary, transform the source word to target by changing/adding/removing 1 character at a time, while all intermediate words being valid English words. Return the transformation chain which has the smallest number of intermediate words.
#
# e.g. If dictionary = ['cat', 'bat', 'bet', 'bed', 'at', 'ad, 'ed']
#
# Then transform_word('cat', 'bed') returns ['cat', 'bat', 'bet', 'bed'].
#
# If dictionary = ['cat, 'bat', 'bed', 'at', 'ad', 'ed']
#
# Then transform_word('cat', 'bed') returns ['cat', 'at', 'ad', 'ed', 'bed'].

# make sure we can assume that both of the words given are actually in the list of words given
# is this case sensitive?
# can we assume that a shortest path actually exists?

# build a graph where the values of the nodes contain the words, and there exists an edge between two nodes if and only if their "edit distance" is 1
# do a breadth first search in the graph starting at word1, look for shortest path to word2

# remove one char:
  # e.g. for cat, check for "at", "ct", "ca" in words array
  #

def dictionary_graph(dictionary)
  edges = []

  for k in (0...dictionary.length) do
    current_word = dictionary[k]

    for i in (k+1...dictionary.length) do
      # differ by removing one letter from current_word
      if current_word.length - 1 == dictionary[i].length
        for j in (0...current_word.length) do
          if current_word[0...j] + current_word[j+1...current_word.length] == dictionary[i]
            edges.push([current_word, dictionary[i]])
          end
        end
      # differ by changing one character
      elsif current_word.length == dictionary[i].length
        for l in (0...current_word.length) do
          if current_word[0...l] + current_word[l+1...current_word.length] == dictionary[i][0...l] + dictionary[i][l+1...current_word.length]
            edges.push([current_word, dictionary[i]])
          end
        end
      # differ by adding a character
      elsif current_word.length + 1 == dictionary[i].length
        for m in (0..current_word.length) do
          if current_word == dictionary[0...m] + dictionary[m+1...current_word.length]
            edges.push([current_word, dictionary[i]])
          end
        end
      else
        next
      end
    end
  end

  edges
end

p dictionary_graph(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'])
