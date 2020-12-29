dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(input, dictionary)
    word_array = input.split(/\W/)
    word_hash = Hash.new

    dictionary.each do |dic_word|
        word_array.each do |arr_word|
            new_word = arr_word.downcase
            if new_word.include?(dic_word)
                if word_hash.has_key?(dic_word.to_sym)
                    word_hash[dic_word.to_sym] += 1
                else
                    word_hash[dic_word.to_sym] = 1
                end
            end
        end
    end

    puts word_hash

end

substrings("below", dictionary)
substrings("Howdy partner, sit sit sit down! How's it going?", dictionary)