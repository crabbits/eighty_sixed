#!/usr/bin/env ruby

require 'eighty_sixed'

if ARGV.length == 0 
  puts "Please enter an array of card values"
else
  hand = EightySixed::Hand.new(ARGV)
  hand.calculate_highest_value
  puts hand.total
end
