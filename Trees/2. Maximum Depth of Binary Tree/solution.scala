/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def maxDepth(root: TreeNode): Int = {
    dfs(root, 0, 0)
  }

  def dfs(node: TreeNode, depth: Int, result: Int): Int = {
    if (node == null) return depth.max(result)
    val lr = dfs(node.left, depth + 1, result)
    dfs(node.right, depth + 1, lr)
  }
}
