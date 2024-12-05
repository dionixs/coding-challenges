# frozen_string_literal: true

class Array
  def my_reverse_each
    i = size - 1
    while i >= 0
      yield self[i]
      i -= 1
    end
    self
  end
end

[1, 2, 3].my_reverse_each { |e| puts e * 10 }
