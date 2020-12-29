


def caesar_cipher(string, shift)

    word_array = string.split('')
    word_array.map! { |char| char.ord }

    new_array = []
    
    word_array.each do |letter|
        if letter > 64 && letter < 91
            if (letter + shift) > 90
                letter += shift - 26
            else
                letter = letter + shift
            end
        
        elsif letter > 96 && letter < 123
            if (letter + shift) > 122
                letter = letter + shift - 26
            else
                letter = letter + shift
            end
        else
            letter = letter
        end
        new_array.push(letter)
    end

    new_array.map! { |char| char.chr }
    return new_array.join()

end

puts caesar_cipher("This is the string", 5)