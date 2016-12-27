#
# ```
#  _
# | |
# | | ____ _ _ __   __ _  __ _ _ __ ___   ___
# | |/ / _` | '_ \ / _` |/ _` | '__/ _ \ / _ \
# |   < (_| | | | | (_| | (_| | | | (_) | (_) |
# |_|\_\__,_|_| |_|\__, |\__,_|_|  \___/ \___/
#                  __/ |
#                 |___/
#  ```
# ----
# from [hackerrank](https://www.hackerrank.com/challenges/kangaroo)
# ----
# ```
# Two kangaroos are on an x-axis traveling in a positive direction. (i.e, toward positive infinity)
# Kangaroo 1 starts hopping at position x1 @ v1 meter/jump and kangaroo starts at position x2 @ v2 meters/jump
#
# Return true if they will meet, and return false if otherwise
# ```
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

# pseudocode
# if k1 and k2 have to be at the same location AND same number of jumps
    # if k1 > k2 => false, and if v1 > v2 => false (same if <)
# if the return of k1 - k2 % v1 - v2 => 0
# that means the k1 and k2 meet at the same location with same number of steps
# else False
