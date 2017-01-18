# A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
#
# For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.
#
# Write a function:
#
# def solution(n)
# that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
#
# For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.
#
# Assume that:
#
# N is an integer within the range [1..2,147,483,647].
# Complexity:
#
# expected worst-case time complexity is O(log(N));
# expected worst-case space complexity is O(1).

# idea:
  # don't start keeping count of number of zeroes in a row until n % 2 returns 1

  # keep a count of the number of zeros in a row, and also max number of zeroes in a row so far
  # until n is either 1 or 0:
  # check whether n % 2 is either 1 or 0
    # if it's 0, then add one to count of zeroes in a row and update max # zeroes
    # if it's 1, then reset the count of zeroes in a row to 0 and update max # zeroes

def solution(n)
  if n == 0 || n == 1
    return 0
  end

  max_gap_count = 0
  gap_count = 0

  until n % 2 == 1
    n = n % 2
  end

  until n / 2 == 1 || n / 2 == 0
    if n % 2 == 1
      max_gap_count = [max_gap_count, gap_count].max
      gap_count = 0
    else
      gap_count += 1
    end

    n = n / 2
  end

  if n == 1
    max_gap_count = [max_gap_count, gap_count].max
  end

  max_gap_count
end
