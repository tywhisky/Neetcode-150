object Solution {
  def kthSmallest(root: TreeNode, k: Int): Int =
    flat(root).apply(k - 1)

  def flat(root: TreeNode): LazyList[Int] =
    if (root == null) LazyList.empty
    else flat(root.left) ++ LazyList(root.value) ++ flat(root.right)
}
