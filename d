class Node:
    def __init__(self, key, left=None, right=None):
        self.key = key
        self.left = left
        self.right = right


class binarysearchtree:
    def __init__(self):
        self.root = None

    def insert(self, key):

        if self.root is None:
            self.root = Node(key)
            return

        p_node = None
        c_node = self.root

        while c_node is not None:
            p_node = c_node
            if c_node.key > key:
                c_node = c_node.left
            else:
                c_node = c_node.right

        if p_node.key > key:
            p_node.left = Node(key)
        else:
            p_node.right = Node(key)

        pass

    def search(self, key):
        c_node = self.root

        while c_node is not None:
            if c_node.key > key:
                c_node = c_node.left
            elif c_node.key < key:
                c_node = c_node.right
            else:
                return True
        return False
        pass

    def remove(self, key):
        p_node = None
        c_node = self.root

        while(c_node is not None) and (key != c_node.key):
            p_node = c_node
            if c_node > key:
                c_node = c_node.left
            else:
                c_node = c_node.right

        if c_node is None:
            return
        elif (c_node.left is None) and (c_node.right is None):
            if p_node is None:
                self.root = None
            else:
                if p_node.left == c_node:
                    p_node.left = None
                else:
                    p_node.right = None
        elif (c_node.left is not None) or (c_node.right is not None):
            cc_node = None
            if c_node.left is not None:
                cc_node = c_node.left
            else:
                cc_node = c_node.right
            if p_node is None:
                self.root = cc_node
            else:
                if p_node.left == c_node:
                    p_node.left = cc_node
                else:
                    p_node.right = cc_node

        else:
            sp_node = c_node
            s_node = c_node.right

            while s_node.left is not None:
                sp_node = s_node
                s_node = s_node.left

            if sp_node.left == s_node:
                sp_node.left = s_node.right
            else:
                sp_node.right = s_node.right

            c_node.key = s_node.key
            pass


bst = binarysearchtree()
bst.insert(6)
bst.insert(4)
bst.insert(12)
bst.insert(5)

print(bst.search(6))
print(bst.search(4))
print(bst.search(12))
print(bst.search(5))
print(bst.search(1))
