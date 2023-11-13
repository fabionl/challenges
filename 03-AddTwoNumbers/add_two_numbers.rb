# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  result = []
  carry_over = 0

  l1_digit = l1
  l2_digit = l2
  carry_over = 0
  while true do
    break if l1_digit.nil? && l2_digit.nil?

    sum = carry_over
    sum += l1_digit.val unless l1_digit.nil?
    sum += l2_digit.val unless l2_digit.nil?

    if sum >= 10
      carry_over = 1
      sum -= 10
    else
      carry_over = 0
    end

    result << sum

    l1_digit = l1_digit&.next
    l2_digit = l2_digit&.next
  end

  result << carry_over if carry_over.positive?

  result
end
