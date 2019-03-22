 class LRUCache

    def initialize(max = 3)
        @max = max
        @cache = []
    end

    def count
      # returns number of elements currently in cache
        @cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(el)
        el_ind = @cache.index(el)
        @cache.delete_at(el)
      end
      @cache << el if @cache.length < @max
    end

    def show
      # shows the items in the cache, with the LRU item first
      print @cache
    end

    private
    # helper methods go here!

end