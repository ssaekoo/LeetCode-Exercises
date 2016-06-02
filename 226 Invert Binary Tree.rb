# Invert a binary tree.

def invert_tree(root)
    if root
        root.left, root.right = root.right, root.left
    else
        return
    end
    invert_tree(root.left)
    invert_tree(root.right)
    root
end
