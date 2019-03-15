class Map

    def initialize
        @map_arr = []
    end

    def set(key, value)
        map_arr_dup = @map_arr.dup
        exists = false
        map_arr_dup.each_index do |i| 
            @map_arr[i][1] = value if @map_arr[i][0] == key 
            exists = true
        end

        @map_arr << [key, value] if !exists
    end

    def get(key)
       
        if @map_arr.none? { |pair| pair[0] == key }
            return nil
        else   
            @map_arr.each_index do |i|
                return @map_arr[i][1] if @map_arr[i][0] == key
            end
        end 

    end

    def delete(key)
        @map_arr.each_index do |i|
            @map_arr.delete_at(i) if @map_arr[i][0] == key
            return true
        end

        false
    end

    def show
        print @map_arr
    end


end