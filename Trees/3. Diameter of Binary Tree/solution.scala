object Solution {
  def diameterOfBinaryTree(root: TreeNode): Int = {
    var diameter = 0

    def lp(node: TreeNode): Int = {
      if (node == null) return 0

      val left = lp(node.left)
      val right = lp(node.right)

      diameter = Math.max(diameter, left + right)

      Math.max(left, right) + 1
    }

    lp(root)
    diameter
  }
}
