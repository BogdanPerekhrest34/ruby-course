require "byebug"


class String
    def valid?
        a = self.split("")
        while a.length > 0
            shift = a.shift
            pop = a.pop
            if shift == "{" && pop == "}"
                if a.length.odd?
                    return false
                elsif a.length == 0
                    return true
                end
            elsif shift == "(" && pop == ")"
                if a.length.odd?
                    return false
                elsif a.length == 0
                    return true
                end
            elsif shift == "<" && pop == ">"
                if a.length.odd?
                    return false
                elsif a.length == 0
                    return true
                end
            else
                return false
            end
        end
    end
end