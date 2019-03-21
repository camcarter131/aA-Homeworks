

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(arr)

    sorted = false
    while !sorted
        sorted = true
        (0...arr.length-1).each do |i|
            if arr[i].length > arr[i+1].length
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = false
            end
        end
    end
    arr[-1]
end

def dominant(arr, &prc)
    return arr if arr.length <= 1

    mid = arr.length / 2
    merge(
      dominant(arr.take(mid), &prc),
      dominant(arr.drop(mid), &prc),
      &prc
    )
end

def merge(left, right, &prc)
    merged = []
    prc = Proc.new { |num1, num2| num1.length <=> num2.length } unless block_given?
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged + left + right
end

def clever(arr)
    longest = arr.first
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)
    tiles.each_with_index do |direction, i|
        return i if dir == direction 
    end
   
end

# putting the tiles into a hash

tiles_hash = {}
tiles_array.each_with_index do |dir, i|
    tiles_hash[dir] = i 
end

def fast_dance(dir, tiles)
    tiles[dir]
end

p fast_dance("up", tiles_hash)

p fast_dance("right-down", tiles_hash)
