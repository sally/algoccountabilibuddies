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

##################################### SECOND ATTEMPT

# utility function dictionary graph to return the edges of the graphified-dictionary as a hash table. the keys are the nodes, and the values are arrays that list all of the other nodes that the key is connected to
def graphify_dictionary(dictionary)
  edges = Hash.new {|hash, key| hash[key] = []}

  # iterate through dictionary
  for k in (0...dictionary.length) do
    current_word = dictionary[k]

    # iterate through all of the remaining words after current word
    for i in (k+1...dictionary.length) do
      # check if word can be gotten by removing a letter from current word
      if current_word.length - 1 == dictionary[i].length
        for j in (0...current_word.length) do
          if current_word[0...j] + current_word[j+1...current_word.length] == dictionary[i]
            edges[current_word] << dictionary[i]
            edges[dictionary[i]] << current_word
            break
          end
        end
      # check if word can be gotten by changing a letter of current word
      elsif current_word.length == dictionary[i].length
        for l in (0...current_word.length) do
          if current_word[0...l] + current_word[l+1...current_word.length] == dictionary[i][0...l] + dictionary[i][l+1...current_word.length]
            edges[current_word] << dictionary[i]
            edges[dictionary[i]] << current_word
            break
          end
        end
      # check if word can be gotten by adding a character to current word
      elsif current_word.length + 1 == dictionary[i].length
        for m in (0..current_word.length) do
          if current_word == dictionary[0...m] + dictionary[m+1...current_word.length]
            edges[current_word] << dictionary[i]
            edges[dictionary[i]] << current_word
            break
          end
        end
      else
        next
      end
    end
  end

  edges
end

p graphify_dictionary(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'])

# utility function to insert into a priority queue (inserting into a min heap)
def insert_into_p_queue(queue, value)
  queue << value

  current_index = queue.length

  while current_index > 1 && value < queue[(current_index / 2) - 1]
    heap[(current_index / 2) - 1], heap[current_index - 1] = heap[current_index - 1], heap[(current_index / 2) - 1]

    current_index = (current_index / 2)
  end

  heap
end

# dijkstra's to find shortest path between word1 and word2
def transform_word(dictionary, graph)
  
end

##################################### FIRST ATTEMPT

# def dictionary_graph(dictionary)
#   edges = []
#
#   for k in (0...dictionary.length) do
#     current_word = dictionary[k]
#
#     for i in (k+1...dictionary.length) do
#       # differ by removing one letter from current_word
#       if current_word.length - 1 == dictionary[i].length
#         for j in (0...current_word.length) do
#           if current_word[0...j] + current_word[j+1...current_word.length] == dictionary[i]
#             edges.push([current_word, dictionary[i]])
#           end
#         end
#       # differ by changing one character
#       elsif current_word.length == dictionary[i].length
#         for l in (0...current_word.length) do
#           if current_word[0...l] + current_word[l+1...current_word.length] == dictionary[i][0...l] + dictionary[i][l+1...current_word.length]
#             edges.push([current_word, dictionary[i]])
#           end
#         end
#       # differ by adding a character
#       elsif current_word.length + 1 == dictionary[i].length
#         for m in (0..current_word.length) do
#           if current_word == dictionary[0...m] + dictionary[m+1...current_word.length]
#             edges.push([current_word, dictionary[i]])
#           end
#         end
#       else
#         next
#       end
#     end
#   end
#
#   edges
# end
#
# p dictionary_graph(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'])
#
# # utility function to insert into priority queue based on computed distance so far
# def insert_into_priority_queue(queue, word_info)
#   # do a binary search to figure out where to insert it
#   distances = queue.map {|word_info| word_info.last}
#   distance = word_info.last
#
#   distances << distance
#   current_index = distances.length
#
#   while current_index > 1 && distance < distances[(current_index / 2) - 1]
#     larger_distance = distances[(current_index / 2) - 1]
#
#     distances[(current_index / 2) - 1] = distance
#     distances[current_index - 1] = larger_distance
#
#     current_index = (current_index / 2)
#   end
#
#   queue.insert(current_index, word_info)
# end
#
# # implement dijkstra's algorithm for shortest path from word1 to word2
# def shortest_path(dictionary, word1, word2)
#   edges = dictionary_graph(dictionary)
#
#   word_priority_queue = []
#   exhausted = []
#   path = []
#
#   word_queue.push([word1, nil, 0])
#
#   until word_queue.empty?
#     current_word_info = word_priority_queue.shift
#     current_word = current_word_info.first
#     current_distance = current_word_info.last
#
#     # look for adjacent nodes
#     for k in (0...edges.length) do
#       if edges[k].includes?(current_word)
#         adjacent_node = (edges[k] - [current_word]).first
#
#         # if we actually find the word, then start updating path
#         if adjacent_node == word2
#           path.unshift(word2)
#           path.unshift(current_word)
#
#           until exhausted
#         end
#
#         # check whether we have already exhausted the adjacent node
#         if !exhausted.keys.includes?(adjacent_word)
#           # check whether it's in the priority queue or not
#           if word_priority_queue.map(&:first).include?(adjacent_word)
#             # check whether or not computed distance is less than existing distance to place it
#             word_info_in_queue = word_priority_queue.find{|word_info| word_info.first == adjacent_word}.last
#             if current_distance + 1 < word_info_in_queue
#               word_info = word_queue.delete(word_info_in_queue)
#               word_info[2] = current_distance + 1
#               insert_into_priority_queue(word_priority_queue, word_info)
#             end
#           else
#             word_info = [adjacent_node, current_word, current_distance + 1]
#             insert_into_priority_queue(word_info)
#           end
#         end
#       end
#     end
#   end
# end
