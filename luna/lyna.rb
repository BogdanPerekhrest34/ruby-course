require "byebug"

def lyna(string)
    raise "Wrong length of card!" if string.length < 16 || string.length > 16 #|| string.scan(/\D/)
    array = string.reverse.split("").map(&:to_i).map.with_index do |element, index|
        element *= 2 if (index+1).even?
        element -= 9 if element > 9
        element
    end
    p array.sum % 10 == 0
end

lyna("4111111111111111")
lyna("1239723834564199")