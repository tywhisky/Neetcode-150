/**
 * Definition for a binary tree node.
 * class TreeNode(_value: Int = 0, _left: TreeNode = null, _right: TreeNode = null) {
 *   var value: Int = _value
 *   var left: TreeNode = _left
 *   var right: TreeNode = _right
 * }
 */
object Solution {
  var result = 0

  def maxPathSum (root: TreeNode): Int = {
     result = Integer.MIN_VALUE

    if (root == null) return 0
    maxSumValue(root)
    result
  }

  def maxSumValue (root: TreeNode): Int = {
    if (root == null) return 0
    val leftMax = Math.max(0, maxSumValue(root.left))
    val rightMax = Math.max(0, maxSumValue(root.right))
    result = Math.max(result, root.value + leftMax + rightMax)
    return root.value + math.max(leftMax, rightMax)
  }

}
