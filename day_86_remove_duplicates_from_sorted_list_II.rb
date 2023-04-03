# Given the head of a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list. Return the linked list sorted as well.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  interim = ListNode.new(-1, head)
  prev = interim
  curr = head

  while curr
    if curr.next && curr.val == curr.next.val
      while curr.next && curr.val == curr.next.val
        curr = curr.next
      end
      prev.next = curr.next
    else
      prev = prev.next
    end
    curr = curr.next
  end
  return interim.next
end

# Example 1:
# Input: head = [1,2,3,3,4,4,5]
# Output: [1,2,5]

# Example 2:
# Input: head = [1,1,1,2,3]
# Output: [2,3]
