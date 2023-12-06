
def encrypte(string, shift_factor = 2)
    
    return "Ops! That's an empty string" if string.empty?

    encrypted_str = ""

    string.each_char do |char|
        if char.match(/[A-Za-z]/)

             is_uppercase = char.upcase == char

            alphabet_pos = char.ord - (is_uppercase ? "A" : "a").ord

            shifted_position = (alphabet_pos + shift_factor) % 26
            
            shifted_char = (shifted_position + (is_uppercase ? "A" : "a").ord).chr
            
            encrypted_str += shifted_char
        else
            encrypted_str += char
        end
   
    end

    encrypted_str

end


puts encrypte("What a string!", 5)