/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def levelOrder(root: TreeNode): List[List[Int]] = {
    if (root == null) return List()
    var nodes: List[TreeNode] = List(root)
    var result: List[List[Int]] = List()
    while (!nodes.isEmpty) {
      var curr: List[Int] = List()
      nodes.foreach { node => curr = curr :+ node.value }
      result = result :+ curr
      nodes = nodes.flatMap { node =>
        List(node.left, node.right).filter(_ != null)
      }
    }
    result
  }
}
