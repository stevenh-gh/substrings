def substring_single_word(word)
  substrings = []
  split = word.split('')
  split.each_with_index do |char, index|
    substrings.push(char)
    split[index + 1..-1].each do |char2|
      substrings.push(char += char2)
    end
  end
  substrings
end

def compare_arrays(_word_arr, _dict, hash)
  _word_arr.each do |word|
    word = word.downcase
    hash[word] += 1 if _dict.include?(word)
  end
  hash
end

def substrings(string, _dict)
  substring_hash = Hash.new(0)
  words = string.split(' ')
  words.each do |word|
    word_array = substring_single_word(word)
    substring_hash = compare_arrays(word_array, _dict, substring_hash)
  end
  substring_hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit below down go going horn how howdy it i low own part partner sit]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
