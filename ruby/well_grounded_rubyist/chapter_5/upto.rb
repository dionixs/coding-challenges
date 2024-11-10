# frozen_string_literal: true

class Integer
  def my_upto(i)
    n = self
    loop do
      yield n
      n += 1
      break if n > i
    end
    self
  end
end

5.my_upto(10) { |i| puts i }
