class Array
  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
    self
  end
end


arr = Array(1..10)
arr.my_each { |i| puts i }
