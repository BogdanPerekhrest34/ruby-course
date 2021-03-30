require "byebug"

class String
    def valid?
        stack = []
        brackets = { "{" => "}", "[" => "]", "<" => ">", "(" => ")"}
        self.each_char do |chr|
            stack << chr if brackets.key?(chr)
            return false if brackets.key(chr) && brackets.key(chr) != stack.pop
        end
        stack.empty?
    end
end

p "<>".valid?