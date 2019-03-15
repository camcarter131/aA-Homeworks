class Stack
    def initialize
      # create ivar to store stack here!
      @stack_elements = []
    end

    def push(el)
      # adds an element to the stack
      @stack_elements << el
    end

    def pop
      # removes one element from the stack
      @stack_elements.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack_elements[-1]
    end
  end