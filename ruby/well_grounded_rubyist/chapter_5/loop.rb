# frozen_string_literal: true

# Реализация метода my_loop:
# метод будет бесконечно выполнять блок,
# который передаеться в метод, вызывая yield
def my_loop
  yield while true
end

# def my_loop
#   yield until false
# end

my_loop { puts "Looping forever!" }
