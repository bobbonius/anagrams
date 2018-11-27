# List of 340k words.
# Finds all anagrams in this list.
# A word consists of the same set of letters in different order

words = File.read('lib/wordlist.txt').downcase.split("\n")

def anagram(input)
  input.group_by { |element| element.chars.sort }.values
end

print anagram(words).first(10)
