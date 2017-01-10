Source: LiveRamp Interview

[Problem statement here](http://www.ardendertat.com/2011/10/17/programming-interview-questions-8-transform-word/)

Given a source word, target word and an English dictionary, transform the source word to target by changing/adding/removing 1 character at a time, while all intermediate words being valid English words. Return the transformation chain which has the smallest number of intermediate words.

e.g.

```ruby
transform_word(['cat', 'bat', 'bet', 'bed', 'at', 'ad', 'ed'], 'cat', 'bed')
# => ["cat", "bat", "bet", "bed"]

transform_word(['cat', 'bat', 'bed', 'at', 'ad', 'ed'], 'cat', 'bed')
# => ["cat", "at", "ad", "ed", "bed"]

transform_word(['cat', 'bat', 'bed', 'ad', 'ed'], 'cat', 'bed')
# => []

transform_word(['toon', 'poon', 'plee', 'same', 'poie', 'plea', 'plie', 'poin'], 'toon', 'plea')
# => ["toon", "poon", "poin", "poie", "plie", "plee", "plea"]

transform_word(['toon', 'poon', 'plee', 'same', 'poie', 'plea', 'plie', 'poin'], 'plee', 'poie')
# => ["plee", "plie", "poie"]
```
