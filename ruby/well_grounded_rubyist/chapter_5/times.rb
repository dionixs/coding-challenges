# frozen_string_literal: true

class Integer
  def my_times
    i = 0
    while i < self
      yield(i)
      i += 1
    end
    i
  end
end

5.my_times { |i| puts "I'm on iteration #{i}" }
