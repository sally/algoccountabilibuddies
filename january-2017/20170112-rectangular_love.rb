# Source: Interview Cake
#
# A crack team of love scientists from OkEros (a hot new dating site) have devised a way to represent dating profiles as rectangles on a two-dimensional plane.
#
# They need help writing an algorithm to find the intersection of two users' love rectangles. They suspect finding that intersection is the key to a matching algorithm so powerful it will cause an immediate acquisition by Google or Facebook or Obama or something.
#
# ![](https://www.interviewcake.com/images/svgs/rectangular_love__it_must_be_love.svg?bust=135)
#
# **Write a function to find the rectangular intersection of two given love rectangles.**
#
# As with the example above, love rectangles are always "straight" and never "diagonal." More rigorously: each side is parallel with either the x-axis or the y-axis.
#
# They are defined as hashes like this :
#
# ```ruby
#   my_rectangle = {
#
#     # coordinates of bottom-left corner
#     'left_x' => 1,
#     'bottom_y' => 5,
#
#     # width and height
#     'width' => 10,
#     'height' => 4,
#
# }
# ```
#
# Your output rectangle should use this format as well.

# PSEUDOCODE

# First thought: Given rectangles define a certain range.
# e.g. rectangular in example has range 1 <= x <= 11, and 5 <= y <= 9

# Then two rectangles overlap if and only if they have both x and y overlaps in their ranges
# edge case to consider:
  # if they touch just @ the edges, this doesn't count.

# Possible x-coordinate orientations:
#1
# R1 ------------ -------------- R2
#2
# R1 ---------------
#            -------------- R2
#3
# R1 --------------------------- R2

# The leftmost point of overlap, if there is one, is the minimum of R1 left point + width, and R2 left endpoint.
# The rightmost point of overlap, if there is one, is the max of "
# If the rightmost endpoint is >= leftmost endpoint, then we don't have an overlap
#   Return nil if this is the case, otherwise return left x and width
# We can do the same process for the vertical endpoints
#   Return nil or return bottom y and height

# Now, check if either result from checking overlap existence is nil
#   Return false if no overlap
# Otherwise, create hash from the results from utility functions and return

def find_overlap(endpoint1, dimension1, endpoint2, dimension2)
  left_overlap_endpoint = [endpoint1 + dimension1, endpoint2].min
  right_overlap_endpoint = [endpoint1 + dimension1, endpoint2].max

  if right_overlap_endpoint >= left_overlap_endpoint
    return nil
  else
    [left_overlap_endpoint, right_overlap_endpoint - left_overlap_endpoint]
  end
end

def rectangular_intersection(rect1, rect2)
  left_x_and_width    = find_overlap(rect1['left_x'], rect1['width'], rect2['left_x'], rect2['width'])
  bottom_y_and_height = find_overlap(rect1['bottom_y'], rect1['height'], rect2['bottom_y'], rect2['height'])

  if left_x_and_width && bottom_y_and_height
    return {'left_x': left_x_and_width.first,
            'bottom_y': bottom_y_and_height.first,
            'width': left_x_and_width.last,
            'height': bottom_y_and_height.last}
  else
    return false
  end
end
