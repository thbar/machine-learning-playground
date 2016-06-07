function test_suite=koans
  initTestSuite

function test_matrix_multiplication
  a = [
    1 10 20
    2 0  10
  ];
  b = [
    1
    2
    4
  ];
  assertEqual(
    [
      1 + 20 + 80
      2 + 40
    ],
    a * b
  );

function test_matrix_size
  a = [ 1 2  3 ; 4 5 6];
  % size is a matrix
  assertEqual([ 2 3 ], size(a))
  % we can query a specific dimension
  assertEqual(3, size(a, 2))
  % the "length" is the longest dimension
  assertEqual(3, length(a))
  % which works conveniently for a vector
  assertEqual(4, length([1 2 3 4]))
