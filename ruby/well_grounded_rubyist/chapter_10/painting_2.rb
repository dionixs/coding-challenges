# frozen_string_literal: true

class Painting
  include Comparable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def to_s
    "My price is #{price}."
  end

  def <=>(other_painting)
    price <=> other_painting.price
  end
end

pa1 = Painting.new(100)
pa2 = Painting.new(200)

p pa1 > pa2
p pa1 < pa2
p pa3 = Painting.new(300)
p pa2.between?(pa1, pa3)

cheapest, priciest = [pa1, pa2, pa3].minmax


# Этот код использует метод clamp, который похож на between?.
# Если цена объекта Painting меньше, чем первый аргумент (cheapest), clamp возвращает первый аргумент.
# Если цена больше, чем второй аргумент (priciest), clamp возвращает второй аргумент.
# Если цена находится между cheapest и priciest, clamp возвращает сам объект.
# В нашем примере создаётся новый объект Painting, который затем немедленно отбрасывается,
# так как цена (1000) выходит за пределы минимума и максимума,
# определённых в нашем методе clamp
p Painting.new(1000).clamp(cheapest, priciest).object_id == priciest.object_id
