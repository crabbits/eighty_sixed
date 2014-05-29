# EightySixed

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'eighty_sixed'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eighty_sixed

## Usage

### IRB

Start IRB and require EightySix

    $ require 'eighty_six'
    
Create a new hand and pass in an array of card values

    $ hand = EightySixed::Hand.new ["A", "J", "3"]
    
Call 'best_total' on the hand to get the best blackjack total!

    $ hand.best_total
    
### Executable

## Contributing

1. Fork it ( http://github.com/ctountzis/eighty_sixed/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
