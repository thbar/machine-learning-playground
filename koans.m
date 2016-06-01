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
