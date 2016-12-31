def test(n)
  counter = 0
  array = []

  until counter == n
    if counter == 0
      array << counter
      counter += 1
      next
    end

    array << counter
    counter += 1
  end

  return array
end

p test(5)
