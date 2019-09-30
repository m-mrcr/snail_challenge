# Ideation:
# method must start from top, reading left to right
# then continues down through the right-most digits as in a column
# then proceeds through bottom digits, reading right to left
# then moves up through the left-most digits, again as in a column
# continutes this process until everything is complete.
# recursion makes sense, as does usage of pop/shift/push


arrayMatrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];

puts snail(arrayMatrix)
