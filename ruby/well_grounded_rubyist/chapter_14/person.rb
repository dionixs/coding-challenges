# frozen_string_literal: true

class Person
  attr_accessor :name

  def self.to_proc
    Proc.new(&:name)
  end
end

d = Person.new
d.name = 'David'

j = Person.new
j.name = 'Joe'

puts [d, j].map(&Person)
