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

    def tail
        current_node = @head
        while head != nil && current_node.next_node != nil
            current_node = current_node.next_node
        end
        current_node
    end

    def at(index)
        curr_index = 0
        current_node = @head
        while curr_index < index
            current_node = current_node.next_node
            curr_index += 1
        end
        current_node
    end

    # def pop
    #     if @head.next_node == nil
    #         return @head.value
    #         @head = Node.new(nil, nil)
    #     end
    #     current_node = @head
    #     value = current_node.value
    #     prev_node = nil
    #     while current_node.next_node != nil
    #         prev_node = current_node
    #         current_node = current_node.next_node
    #         value = current_node.value
    #     end
    #     if (prev_node && prev_node.next_node)
    #         prev_node.next_node = nil
    #     end
    #     value
    # end
    def pop
        if @head != nil
            if @head.next_node == nil
                value = @head.value
                @head = nil
                return value
            end
            current_node = @head
            prev_node = nil
            value = nil
            while current_node.next_node && current_node.next_node != nil
                value = current_node.next_node.value
                prev_node = current_node
                current_node = current_node.next_node
            end
        end
        if (prev_node)
            prev_node.next_node = nil
        end
        value
    end

    def contains?(value)
        yes = false
        current_node = @head
        while current_node != nil
            if current_node.value == value
                yes = true
            end
            current_node = current_node.next_node
        end
        yes
    end

    def find(value)
        current_node = @head
        index = 0
        while current_node != nil
            if current_node.value == value
                return index
            end
            index += 1
            current_node = current_node.next_node
        end
    end

    def to_s
        str = ""
        current_node = @head
        while current_node != nil
            str = str + "( #{current_node.value} ) -> "
            current_node = current_node.next_node
        end
        str + "nil"
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
