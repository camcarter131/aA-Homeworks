class Queue

    def initialize
        @queue_els = []
    end

    def enqueue(el)
        @queue_els.unshift(el)
    end

    def dequeue
        @queue_els.pop
    end

    def peek
        @queue_els[-1]
    end

end