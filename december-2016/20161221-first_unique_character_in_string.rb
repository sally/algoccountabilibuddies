# Given a string, find the first non-repeating character in it and return its index. If it doesn't, return -1.

# convert array to hash.
# key = char, value = character count.
# return index of first char where value == 1, else return -1

def first_uniq_char(s)
    hashed_array = Hash.new(0)
    s.chars.each do |char|
        hashed_array[char] += 1
    end
    s.chars.each do |char|
       if hashed_array[char] == 1
           return s.chars.index(char)
       end
    end
    return -1
end

s = "leetcode"
puts first_uniq_char(s)

s = "loveleetcode,"
puts first_uniq_char(s)
