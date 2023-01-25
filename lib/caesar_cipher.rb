class Caesarcipher
    def to_new_number(letter, modifier)
        if modifier > 6
            puts "Please, input a modifier less than 7"
            return
        else
            letter.ord + modifier
        end
    end

    def rebase_number(number)
        if number > 122
            difference = number - 122
            number = 96 + difference
            number
        elsif number > 90 && number < 97
            difference = number - 90
            number = 64 + difference
            number
        else 
            number
        end
    end

    def translate_to_number(string, modifier)
        string_list = string.split("")
        string_list = string_list.map do |letter|
            letter = to_new_number(letter, modifier)
            rebase_number(letter)
        end
    end  
end
caesarcipher = Caesarcipher.new
caesarcipher.translate_to_number("az",1)
