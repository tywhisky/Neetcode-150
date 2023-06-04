object Solution {
  def generateParenthesis(n: Int): List[String] =
    go(n * 2, List((0, List.empty)))

  def go(remN: Int, acc: List[(Int, List[Char])]): List[String] =
    if (remN <= 0) acc.collect { case (0, chars) => chars.reverse.mkString }
    else {
      val nAcc = acc.flatMap {
        case (0, chars) => List((1, '(' :: chars))
        case (balance, chars) => List((balance + 1, '(' :: chars), (balance - 1, ')' :: chars))
      }
      go(remN - 1, nAcc)
    }
}
