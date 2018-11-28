# List of 340k words.
# Finds all anagrams in this list.
# A word consists of the same set of letters in different order

words = File.read('lib/wordlist.txt')
            .downcase
            .split("\n")

# Finds anagrams and puts them out

def anagram(input)
  array = input.group_by { |element| element.chars.sort }.values
  # finding arrays with more than 1 element returns true
  filtered = array.select { |a| a.size > 1 }
  # puts out each array with more than 1 element
  filtered.each { |a| print a }
end

anagram(words)

# Anagram? True or False?

def anagram?(a, b)
  a.chars.sort == b.chars.sort
end

print anagram?('listen', 'silent')

# Bonus

def anagram_hash(input)
  list = {} # empty hash
  input.each do |word| # iterates over each word in the array
    add_word = word.chars.sort.join # sorts the anagrams
    if list[add_word]
      # anagrams are added to the hash
      list[add_word] << word
    else
      # adds the word in a single array
      list[add_word] = [word]
    end
  end
  # list of all anagrams and words
  list.values
end
