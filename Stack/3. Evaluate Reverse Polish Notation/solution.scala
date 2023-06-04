object Solution {
    import scala.collection.mutable.Stack

    def evalRPN(tokens: Array[String]): Int = {
        val stack = new Stack[Int]()
        println(stack)
        tokens.foreach(t =>
            t match {
                case "+" =>
                    val right = stack.pop()
                    val left = stack.pop()
                    stack.push(right + left)
                case "-" =>
                    val right = stack.pop()
                    val left = stack.pop()
                    stack.push(right - left)
                case "*" =>
                    val right = stack.pop()
                    val left = stack.pop()
                    stack.push(right * left)
                case "/" =>
                    val right = stack.pop()
                    val left = stack.pop()
                    stack.push(right / left)
                case num =>
                    stack.push(num.toInt)
            }
        )

        stack.pop()
    }
}
