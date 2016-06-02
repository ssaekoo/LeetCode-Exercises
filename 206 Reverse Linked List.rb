# Reverse a singly linked list.

def reverse_list(head)
    newHead = nil
    while !head.nil?
        temp = head.next
        head.next = newHead
        newHead = head
        head = temp
    end
    newHead
end
