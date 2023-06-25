/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def goodNodes(root: TreeNode): Int = {
    def dfs(node: TreeNode, maxVal: Int): Int = {
      if (node == null) 0
      else {
        val newMax = maxVal.max(node.value)
        val leftCount = dfs(node.left, newMax)
        val rightCount = dfs(node.right, newMax)
        if (node.value >= maxVal) leftCount + rightCount + 1
        else leftCount + rightCount
      }
    }
    dfs(root, Int.MinValue)

  }
}
