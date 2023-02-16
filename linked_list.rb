class LinkedList
    attr_reader :head
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

    def prepend(value)
        @head = Node.new(value, @head)
    end

    def size
        sum = 0
        current_node = @head
        while current_node != nil
            sum += 1
            current_node = current_node.next_node
        end
        sum
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
