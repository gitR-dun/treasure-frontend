This is a treasure hunt!

Build an app that hides treasure in one of 9 places (a 3 x 3 array). The treasure board should look as follows
    0  1  2

0 [[-, -, -]
1  [-, -, -]
2  [-, -, -]]

The user will guess a particular position based on the numbers and values. For instance, if a user picks 01 (first number is the column, second number is the row) the app will check to see if the treasure is in that spot. If it is, the app will return a congratulatory message. Otherwise, it will return an updated board for another guess. The board will be updated with an 'X' in place of a '-'. In the case where the user guessed 01 (and they were incorrect) the user would be returned the board

    0  1  2
0 [[-, -, -],
1  [X, -, -],
2  [-, -, -]]


Bonus: Randomly select the position of the treasure
Bonus: keep track of how many guesses a user has made
Bonus: Handle a situation where the user types in nonsense
Double Bonus: Have your board look like this (instead of 01, the user would enter A2):

    A  B  C
1 [[-, -, -],
2  [X, -, -],
3  [-, -, -]]

Triple Bonus: Allow the user to enter different formats (A2, a2, 2a or 2A)
Quad Bonus: Make your app more dynamic, where a user can choose how large the grid is
