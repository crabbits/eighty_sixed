require "eighty_sixed/version"

module EightySixed

  class Hand
    
    NON_NUMERICS = %w{ J K Q }
    
    def initialize(cards)
      @cards = build_array_from(cards)
      @total = 0
      @aces = 0  
    end

    def cards
      @cards
    end

    def total
      @total
    end

    def aces
      @aces
    end

    def add(value)
      @total += value
    end

    def minus(value)
      @total -= value
    end

    def increment_ace_count
      @aces += 1
    end

    def calculate_highest_value
      add_values_for(@cards)
      adjust_aces    
    end

    private

    def build_array_from(cards)
      array = []
      cards.each do |a|
        array << a.gsub(",", "").gsub("[", "").gsub("]", "")
      end
      array
    end

    def add_values_for(cards)
      cards.each do |card|
	if NON_NUMERICS.include? card
	  add(10) 
	elsif card == "A"
	  increment_ace_count
	  add(11)
	else
          add(card.to_i)
	end
      end
    end

    def adjust_aces
      (1..aces).each do |ace|
        break if total <= 21
	minus(10)  
      end
    end
  end
end
