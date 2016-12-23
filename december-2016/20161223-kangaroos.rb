#
# Two kangaroos are on an x-axis traveling in a positive direction. (i.e, toward positive infinity)
# Kangaroo 1 starts hopping at position x1 @ v1 meter/jump and kangaroo starts at position x2 @ v2 meters/jump
#
# Return true if they will meet, and return false if otherwise
#
#
# ## Input Format
# ```
# An array of 4 integers denoting the respective values of x1, v1, x2, v2
# [x1, v1, x2, v2]
# ```
# ## Constraints
# ```
# 0 <= x1 <= x2 <= 10000
# 0 <= v1 <= 10000
# 0 <= v2 <= 10000
# ```
# ## Example
# ```
# kangaroos_meet([43, 2, 70, 2]) will return false
# kangaroos_meet([0, 3, 4, 2]) will return true
# kangaroos_meet([112, 9563, 8625, 244]) will return false
# ```

# pseudocode:
# another one that will return false is
# [0,2,4,2]
# can short circuit if the starting position of k1 is less than k2, and also k1's rate is less than or equal to k2's rate
# also return false:
# [0,3,0,2]

# just have to assume that the kangaroos will meet at their distance rate travel LCM, or never.

# make assumption that we already checked that (WLOG) x1<x2, v1>v2
def kangaroos(x1,v1,x2,v2)
  position_difference = (x1 - x2).abs
  rate_difference = (v1 - v2).abs
  if position_difference % rate_difference == 0
    return true
  else
    return false
  end
end
