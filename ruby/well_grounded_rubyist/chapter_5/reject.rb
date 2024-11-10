# frozen_string_literal: true

class Array
  # def my_map
  #   i = 0
  #   arr = []
  #   while i < length
  #     arr << yield(self[i])
  #     i += 1
  #   end
  #   arr
  # end

  def my_each
    i = 0
    while i < size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_map
    arr = []
    my_each do |el|
      arr << yield(el)
    end
    arr
  end

  def my_map_with_index
    i = 0
    arr = []
    while i < length
      arr << yield(self[i], i)
      i += 1
    end
    arr
  end

  # new array containing the items
  # in self for which the given block is not true
  def my_reject
    my_map_with_index do |value, i|
      value unless yield(self[i])
    end
  end
end

arr = [18, 22, 3, 3, 53, 6]
arr.my_reject { |num| num > 10 }
