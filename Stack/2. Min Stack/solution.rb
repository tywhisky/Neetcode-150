class MinStack
    Item = Struct.new(:value, :min, :next)
    def initialize()
      @head = nil
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @head = Item.new(value, [value, @head&.min].compact.min, @head)
    end


=begin
    :rtype: Void
=end
    def pop()
      @head = @head.next
    end


=begin
    :rtype: Integer
=end
    def top()
      @head.value
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @head.min
    end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
