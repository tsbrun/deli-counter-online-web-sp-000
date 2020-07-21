# Write your code here.
require 'pry'

def line(katz_deli)
  puts "The line is currently empty." if katz_deli.empty?
  if !katz_deli.empty?
    current_line = "The line is currently:"
    katz_deli.each_with_index {|customer, index| current_line << " #{index + 1}. #{customer}"}
    puts current_line
  end
end

def take_a_number(katz_deli, customer)
  katz_deli << customer
  if customer == katz_deli[0]
    puts "Welcome, #{customer}. You are number 1 in line."
  else
    puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
    katz_deli
  end
end
