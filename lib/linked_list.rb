require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
		if (self.head == nil) 
			print("Empty Linked List\n")
		else
 
			temp = self.head
			back = nil
			#  Make new tail
			self.tail = self.head
			#  Change node link
			while (temp != nil) 
				#  Make new upcoming node as to head
				self.head = temp
				temp = temp.next_node
				#  Modified current node link
				self.head.prev_node = temp
				self.head.next_node = back
				back = self.head
			end

		end

	end
end