# Ideation:
# method must start from top, reading left to right
# then continues down through the right-most digits as in a column
# then proceeds through bottom digits, reading right to left
# then moves up through the left-most digits, again as in a column
# continutes this process until everything is complete.
# recursion makes sense, as does usage of pop/shift/push

def snail(arrays, acc = [])
  unless arrays == []
    arrays.first.each do |num|
      acc.push(num)
    end
    arrays.shift
  end
  unless arrays == []
    arrays.map do |array|
      acc.push(array.pop)
    end
    until arrays.last == []
      acc.push(arrays.last.pop)
    end
    arrays.pop
    arrays.reverse.map do |array|
      acc.push(array.shift)
    end
    snail(arrays, acc)
  end
  return acc
end

arrays1 = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12],
  [13,14,15,16]
]

arrays2 = [
  [1, 2, 3, 4, 5],
  [6, 7, 8, 9, 10],
  [11, 12, 13, 14, 15],
  [16, 17, 18, 19, 20],
  [21, 22, 23, 24, 25]
]

puts snail(arrays1)
puts '------------'
puts snail(arrays2)
