def kangaroos_meet(array)
  x1 = array[0]
  v1 = array[1]
  x2 = array[2]
  v2 = array[3]

  #return false if kangaroo #2 is the same speed or faster
  if v2 >= v1
    false
  #return true if the difference in position is divisible by the difference in speed
  elsif (x1 - x2) % (v2 - v1) == 0
    true
  else
    false
  end
end

# vroom vroom
p kangaroos_meet([43, 2, 70, 2])
p kangaroos_meet([0, 3, 4, 2])
p kangaroos_meet([112, 9563, 8625, 244])

# O(1) for time & space
