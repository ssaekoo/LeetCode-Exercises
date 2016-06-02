# Given two binary trees, write a function to check if they are equal or not.
#
# Two binary trees are considered equal if they are structurally identical and the nodes have the same value.

def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?
    if p.val == q.val
       return is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
    end
    return false
end
