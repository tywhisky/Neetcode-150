# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.split("").each do |c|
    case c
    in ")"
      return false if stack.last != "("
      stack.pop
    in "]"
      return false if stack.last != "["
      stack.pop
    in "}"
      return false if stack.last != "{"
      stack.pop
    else
      stack.append(c)
    end
  end

  return stack == []
end

s = "()[]{}"
result = is_valid(s)
puts "result: #{result}"
