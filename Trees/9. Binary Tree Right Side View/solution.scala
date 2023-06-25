/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def rightSideView(root: TreeNode): List[Int] = {
    if (root == null) return List()
    var nodes: List[TreeNode] = List(root)
    var result: List[Int] = List()
    while (!nodes.isEmpty) {
      result = result :+ nodes.last.value
      nodes =
        nodes.flatMap(node => List(node.left, node.right).filter(_ != null))
    }
    result
  }
}
