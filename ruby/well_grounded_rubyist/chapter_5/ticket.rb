# frozen_string_literal: true

class TicketComparer
  def self.compare(ticket1, ticket2, ticket3)
    case ticket1.date
    when ticket2.date
      puts 'Same date as ticket2!'
    when ticket3.date
      puts 'Same date as ticket3!'
    else
      puts 'No match.'
    end
  end
end

class Ticket
  attr_accessor :name, :venue, :date

  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    venue == other_ticket.venue
  end
end

ticket1 = Ticket.new('ticket1', 'Town Hall', '07/08/18')
ticket2 = Ticket.new('ticket2', 'Conference Center', '07/08/18')
ticket3 = Ticket.new('ticket3', 'Town Hall', '08/09/18')

puts "#{ticket1.name} — is for an event on: #{ticket1.date}."

TicketComparer.compare(ticket1, ticket2, ticket3)
