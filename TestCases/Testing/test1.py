def longest_even(sentence):
    longest_even = sorted([x for x in sentence.split() if len(x) % 2 == 0])[0]
    return longest_even if longest_even else '00'


#def main():
sentence = 'Hello this is a sentence, and we will compdlete the challenge'
print(longest_even(sentence))

