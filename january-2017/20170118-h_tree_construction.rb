# input: (1) x, y coordinates (represent the center of the H tree
# (2) depth: how many levels of H's are drawn
# (3) starting_length: total length of one of the legs of the H

# idea:
# starting from x,y coordinate, draw line from (x,y) to (x - SL/2, y) and (x + SL/2, y)
# draw line from (x - SL/2, y) to (x - SL/2, y - SL/2) and (x - SL/2, y + SL/2)
# same for (x + SL/2, y)
   # this accounts for first H
# call draw line on four endpoints with starting length parameter as SL/sqrt(2), with depth reduced by 1
   #

# IP for drawLine: x1, y1, x2, y2

def h_tree(center_x, center_y, starting_length, depth)
   if depth == 0
      return
   end

   drawLine(center_x - starting_length/2, center_y, center_x + starting_length/2, center_y)
   drawLine(center_x - starting_length/2, center_y - starting_length/2, center_x - starting_length/2, center_y + starting_length/2)
   drawLine(center_x + starting_length/2, center_y - starting_length/2, center_x + starting_length/2, center_y + starting_length/2)

   h_tree(center_x - starting_length/2, center_y - starting_length/2, starting_length/sqrt(2), depth - 1)
   h_tree(center_x - starting_length/2, center_y + starting_length/2, starting_length/sqrt(2), depth - 1)
   h_tree(center_x + starting_length/2, center_y - starting_length/2, starting_length/sqrt(2), depth - 1)
   h_tree(center_x + starting_length/2, center_y + starting_length/2, starting_length/sqrt(2), depth - 1)
end
