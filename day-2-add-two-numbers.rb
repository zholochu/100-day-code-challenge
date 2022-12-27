# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
# You may assume the two numbers do not contain any leading zero, except the number 0 itself.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# Solution from user t_hara, I was not able to solve myself, and got help :)

def add_two_numbers(l1, l2)
  n1, n2 = l1, l2

  current = result = ListNode.new(nil)
  step = 0

  while n1 || n2 || 0 < step
      a = n1 ? n1.val : 0
      b = n2 ? n2.val : 0
      x = a + b + step

      step = x / 10
      x -= 10 if 0 < step

      node = ListNode.new(x)
      current&.next = node
      current = node

      n1, n2 = n1&.next, n2&.next
  end
  result.next
end
