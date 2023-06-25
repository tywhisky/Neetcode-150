/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def goodNodes(root: TreeNode): Int = {
    var result: Int = 0
    def dfs(node: TreeNode, currMax: Int): Unit = {
      if (node == null) return
      var newMax = currMax
      if (node.value >= currMax) {
        result += 1
        newMax = node.value
      }
      dfs(node.left, newMax)
      dfs(node.right, newMax)
    }
    dfs(root, 0)
    result
  }
}
