/** Definition for a binary tree node. class TreeNode(var _value: Int) { var
  * value: Int = _value var left: TreeNode = null var right: TreeNode = null }
  */

object Solution {
  def lowestCommonAncestor(
      root: TreeNode,
      p: TreeNode,
      q: TreeNode
  ): TreeNode = {
    val rv = root.value
    (p.value, q.value) match {
      case (pv, qv) if pv > rv && qv > rv =>
        lowestCommonAncestor(root.right, p, q)
      case (pv, qv) if pv < rv && qv < rv =>
        lowestCommonAncestor(root.left, p, q)
      case (pv, _) if pv == rv => p
      case (_, qv) if qv == rv => q
      case (_, _)              => root
    }
  }
}
