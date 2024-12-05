# frozen_string_literal: true

class Person
  attr_accessor :age
  def initialize(options)
    self.age = options[:age]
  end

  def teenager?
    (13..19) === age
  end
end

people = 10.step(25, 3).map { |i| Person.new(age: i) }

# возвращает два подмассива.
# Первый подмассив включает тех людей, для которых метод person.teenager?
# вернул true; второй — это false.
# Теперь мы можем использовать эту информацию,
# например, чтобы узнать, сколько у нас подростков и сколько неподростков:
teens = people.partition(&:teenager?)
