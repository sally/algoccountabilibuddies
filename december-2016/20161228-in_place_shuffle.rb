def shuffle(ary)
  ary.each_with_index do |num, idx|
    random = rand(ary.length)
    temp = ary[random]
    ary[random] = num
    ary[idx] = temp
  end
  ary
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

p shuffle([1,2,3,4])
