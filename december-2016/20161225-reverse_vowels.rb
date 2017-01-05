def reverse_vowels(str)
  array_string = str.split('')
  array_of_vowels = str.scan(/[aeiou]/)
  vowels = ['a', 'e', 'i', 'o', 'u']
  n = array_string.map do |x|
    if vowels.include?(x)
      x = array_of_vowels.pop
    else
      x = x
    end
  end
  n.join
end

###########################
##  ｄｒｉｖｅｒ　ｃｏｄｅ  ##
###########################

puts reverse_vowels('hello')
# should output 'holle'

puts reverse_vowels('leetcode')
# should output 'leotcede'
