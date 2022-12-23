class Solution {
  public List<List<Integer>> levelOrderBottom(TreeNode root) {
    List<List<Integer>> ans = new ArrayList<List<Integer>>();
    if(root == null)
      return ans;
    Queue<TreeNode> queue = new LinkedList<TreeNode>();
    queue.add(root);
    while(!queue.isEmpty()) {
      List<Integer> currLevel = new ArrayList<>();
      int size = queue.size();
      for(int i=0; i<size; i++) {
        TreeNode currNode = queue.poll();
        currLevel.add(currNode.val);
        if(currNode.left != null) queue.add(currNode.left);
        if(currNode.right != null) queue.add(currNode.right);
      }
      if(currLevel.size() > 0)
        ans.add(0, currLevel);
    }
    return ans;
  }
}
