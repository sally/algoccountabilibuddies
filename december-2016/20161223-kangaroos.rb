# Prompt:
# Two kangaroos are on an x-axis traveling in a positive direction. (i.e, toward positive infinity)
# Kangaroo 1 starts hopping at position x1 @ v1 meter/jump and kangaroo starts at position x2 @ v2 meters/jump
#
# Return true if they will meet, and return false if otherwise
#
# Input Format:
# An array of 4 integers denoting the respective values of x1, v1, x2, v2
# [x1, v1, x2, v2]
#
# Constraints:
# 0 <= x1 <= x2 <= 10000
# 0 <= v1 <= 10000
# 0 <= v2 <= 10000
#
# Example:
# kangaroos_meet([43, 2, 70, 2]) will return false
# kangaroos_meet([0, 3, 4, 2]) will return true
# kangaroos_meet([112, 9563, 8625, 244]) will return false

def kangaroos_meet(ary)
  same_spot = false
  10000.times do
    if ary[0] == ary[2]
      same_spot = true
    end
    ary[0] += ary[1]
    ary[2] += ary[3]
  end
  same_spot
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

puts kangaroos_meet([43, 2, 70, 2])
puts kangaroos_meet([0, 3, 4, 2])
puts kangaroos_meet([112, 9563, 8625, 244])
