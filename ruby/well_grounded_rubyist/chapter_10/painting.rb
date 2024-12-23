# frozen_string_literal: true

class Painting
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def to_s
    "My price is #{price}."
  end

  def <=>(other)
    price <=> other.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900)) }

puts '5 randomly generated Painting prices:'
puts paintings

puts 'Same paintings, sorted:'
puts paintings.sort


['2', 1.5, '3', 4, '6'].sort { |a, b| a.to_i <=> b.to_i }


# Краткая сортировка с использованием sort_by
['2', 1.5, '3', 4, '6'].sort_by(&:to_i)
['2', 1.5, '3', 4, '6'].sort_by(&:to_i)
