class Integer
  def my_downto(i)
    n = self
    while n >= i
      yield(n)
      n -= 1
    end
    self
  end
end

5.my_downto(1) { |n| print n, ".. " }
