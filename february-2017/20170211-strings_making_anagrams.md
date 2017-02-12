## Prompt

Alice is taking a cryptography class and finding anagrams to be very useful. 
We consider two strings to be anagrams of each other if the first string's letters can be rearranged to form the second string. 
In other words, both strings must contain the same exact letters in the same exact frequency.
For example, **bacdc** and **dcbac** are anagrams, but **bacdc** and **dcbad** are not.

Alice decides on an encryption scheme involving two large strings where encryption is dependent on the minimum number of character deletions required to make the two strings anagrams. 
Can you help her find this number?

Given two strings, "a" and "b", that may or may not be of the same length, determine the minimum number of character deletions required to make "a" and "b" anagrams. 
Any characters can be deleted from either of the strings.

#### Input Format

The first line contains a single string, "a".
The second line contains a single string, "b".

#### Constraints

1 <= |a|, |b| <= 10^4
It is guaranteed that "a" and "b" consist of lowercase English alphabetic letters (a-z).

#### Output Format

Print a single integer denoting the number of characters you must delete to make the 2 strings anagrams of each other.

#### Sample Input

cde
abc

#### Sample Output

4

#### Explanation

We delete the following characters from our 2 strings to turn them into anagrams of each other:

* Remove "d" and "e" from cde to get c.
* Remove "a" and "b" from abc to get c.

We must delete 4 characters to make both strings anagrams, so we print 4 on a new line.


