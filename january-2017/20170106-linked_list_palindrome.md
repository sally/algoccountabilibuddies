Source: [GeeksForGeeks](http://www.practice.geeksforgeeks.org/problem-page.php?pid=700391)

Given a singly linked list of integers, Your task is to complete a function that returns true if the given list is palindrome, else returns false.

Input:
The first line of input contains an integer T denoting the no of test cases. Then T testcases follow. Each test case contains 2 line the first line contains an integer N denoting the size of the linked list. In the next line are N space separated values of the nodes of the linked list.

Output:
For each test case output will be 1 if the linked list is a pallindrome else 0.

Constraints:
1<=T<=1000
1<=N<=50

Example(To be used only for expected output):
Input
2
3
1 2 1
4
1 2 3 4

Output:
1
0

# Ruby Linked List Node Implementation:

```
class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end

end
```
