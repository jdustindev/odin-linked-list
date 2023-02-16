class LinkedList
    def initialize(head=nil)
        @head = head
    end
    def append(value)
        if !@head
            @head = Node.new(value)
        else
            current_node = @head
            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            current_node.next_node = Node.new(value)
        end
    end
end

class Node
    attr_reader :value
    attr_accessor :next_node
    def initialize(value=nil, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

list = LinkedList.new()
list.append(1)
list.append(2)
