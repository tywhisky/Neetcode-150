def characterReplacement(s: String, k: Int): Int = {
  var result = 0
  var count = Array.fill(26)(0)
  var maxCharCountWithinWindow = 0
  var start = 0
  var end = 0
  for (end <- 0 until s.length) {
    // increment the count of curr element in window
    count(s(end) - 'A') += 1
    // get the max repeating char count in window
    maxCharCountWithinWindow = maxCharCountWithinWindow.max(count(s(end) - 'A'))
    // char count of other character apart from max occuring
    var otherCharCount = end - start + 1 - maxCharCountWithinWindow
    // As we can replace till k times only, so till we have other chars count > k, shrink window
    while (otherCharCount > k) {
      count(s(start) - 'A') -= 1
      start += 1
      otherCharCount = end - start + 1 - maxCharCountWithinWindow
    }
    result = result.max(end - start + 1)
  }
  result
}
