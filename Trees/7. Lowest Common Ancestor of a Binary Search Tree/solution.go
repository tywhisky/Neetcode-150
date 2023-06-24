/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val   int
 *     Left  *TreeNode
 *     Right *TreeNode
 * }
 */

func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
	var pv = p.Val
	var qv = q.Val
	var rv = root.Val
	if pv > rv && qv > rv {
		return lowestCommonAncestor(root.Right, p, q)
	} else if pv < rv && qv < rv {
		return lowestCommonAncestor(root.Left, p, q)
	} else if pv == rv {
		return p
	} else if qv == rv {
		return q
	} else {
		return root
	}
}
