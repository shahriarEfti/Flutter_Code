/* Intergapped Number Range

Problem Statement
You are given four integers:

1
l1,

1
r1,

2
l2, and

2r2. Your task is to print a specific range of integers following certain rules. Your goal is to print all the integers between

1
l1 and

1
r1, excluding the integers between

2
l2 and

2
r2.

However, there's a twist. The range
[
�
2
,
�
2
]
[l2,r2] creates a gap within the first range
[
�
1
,
�
1
]
[l1,r1]. Your task is to identify this gap and print the two segments of the range separately.
Input
The input consists of four integers in a single line:
1
l1,
1
r1,
2
l2, and
2
r2
Output
Print two segments of integers separated by a space:

The integers between

1
l1 and
2
l2 (inclusive of
1
l1, but excluding
2
l2).
The integers between
2
r2 and
1
r1 (excluding of
2
r2, but inclusive
1
r1).
Constraints
0
0
≤
≤
�
1
l1
≤
≤
900
900
10
10
≤
≤
�
1
r1
≤
≤
1000
1000
�
1
<
�
1
l1<r1
1
1
≤
≤
�
2
l2
≤
≤
901
901
2
2
≤
≤
�
2
r2
≤
≤
902
902
�
1
<
�
2
<
�
2
<
�
1
l1<l2<r2<r1
Example 1:
Input:
20 40 30 35
Output:
20 21 22 23 24 25 26 27 28 29 36 37 38 39 40
Example 2:
Input:
1 10 3 6
Output:
1 2 7 8 9 10
Notes:
In the example provided, the first range is
[
20
,
40
]
[20,40], and the second range is
[
30
,
35
]
[30,35]. The integers between 30 and 35 (inclusive) create a gap in the first range. The program prints two separate segments: one from 20 to 29 and the other from 36 to 40. This honors the constraint of excluding the integers between
�
2
l2 and
�
2
r2.*/



import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int l1 = int.parse(input[0]);
  int r1 = int.parse(input[1]);
  int l2 = int.parse(input[2]);
  int r2 = int.parse(input[3]);
  printRanges(l1, r1, l2, r2);
}

void printRanges(int l1, int r1, int l2, int r2) {
  for (int i = l1; i < l2; i++) {
    stdout.write('$i ');

  }

  for (int i = r2 + 1; i <= r1; i++) {
    stdout.write('$i ');

  }
}
