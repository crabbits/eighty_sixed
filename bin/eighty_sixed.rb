#!/usr/bin/env ruby 

require 'eighty_sixed'

def argv_to_array
  ARGV.inject([]) { |array, a| array << a.gsub("[", "").gsub(",", "").gsub("]", ""); array }   
end

if ARGV.length == 0
  puts "Please pass an array of card values"
else
  hand = EightySixed::Hand.new(argv_to_array)
  puts hand.best_total
end
