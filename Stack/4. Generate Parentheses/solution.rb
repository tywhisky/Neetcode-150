# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  recursive(0, 0, n, "", [])
end

def recursive(left, right, n, curr, result)
  return result.push(curr) if left == n and right == n

  l = left < n ? recursive(left + 1, right, n, "#{curr}(", result) : result
  right < left ? recursive(left, right + 1, n, "#{curr})", l) : l
end

puts "#{generate_parenthesis(3)}"
