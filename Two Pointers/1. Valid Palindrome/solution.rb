# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  arr = s.split("").filter {|char| char =~ /[a-zA-Z\d+]/}.map {|char| char.upcase}

  left = 0
  right = arr.length - 1
  while left < right
    return false if arr[left] != arr[right]
    left += 1
    right -= 1
  end
  return true
end
