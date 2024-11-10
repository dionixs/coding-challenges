class Array
  def my_map
    i = 0
    arr = []
    while i < length
      arr << yield(self[i])
      i += 1
    end
    arr
  end
end

arr = Array(1..10)
arr = arr.my_map { |i| i * 10 }
puts arr
