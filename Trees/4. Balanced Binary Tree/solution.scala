object Solution {
  def isBalanced(root: TreeNode): Boolean = {
    val result = helper(root)
    return result._2
  }

  /*
   * Return the height of a tree and whether it's balanced in a tuple
   */
  def helper(root: TreeNode): (Int, Boolean) = {
    // empty tree is balanced
    if (root == null) {
      return (0, true)
    }

    // recursively check left and right subtrees
    val (leftHeight, isLeftBalanced) = helper(root.left)
    val (rightHeight, isRightBalanced) = helper(root.right)

    val height = scala.math.max(leftHeight, rightHeight) + 1
    val heightDiff = scala.math.abs(leftHeight - rightHeight) <= 1
    val isBalanced = isLeftBalanced && isRightBalanced && heightDiff

    return (height, isBalanced)
  }
}
