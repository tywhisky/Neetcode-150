/** Definition for a binary tree node. class TreeNode(_value: Int = 0, _left:
  * TreeNode = null, _right: TreeNode = null) { var value: Int = _value var
  * left: TreeNode = _left var right: TreeNode = _right }
  */
object Solution {
  def isValidBST(root: TreeNode): Boolean = {
    def dfs(root: TreeNode, min: Option[Int], max: Option[Int]): Boolean = {
      if (root == null) {
        true
      } else {
        (min.isEmpty || root.value > min.get) &&
        (max.isEmpty || root.value < max.get) &&
        dfs(root.left, min, Some(root.value)) &&
        dfs(root.right, Some(root.value), max)
      }
    }
    dfs(root, None, None)
  }
}
