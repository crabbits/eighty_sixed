# EightySixed

Gem to calculate your hand's best total in blackjack.

## Installation

Add this line to your application's Gemfile:

    gem 'eighty_sixed'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eighty_sixed

## Usage

### IRB

Start IRB and require EightySixed

    $ require 'eighty_sixed'
    
Create a new hand and pass in an array of card values

    $ hand = EightySixed::Hand.new ["A", "J", "3"]
    
Call 'best_total' on the hand to get the best blackjack total!

    $ hand.best_total
    
### Executable

There is an executable that can be run aswell.

If you installed the gem

    $ cd <gem install path>
    $ ruby bin/eighty_sixed <array of cards>
    
If you forked the repo

    $ cd <path to repo>
    $ ruby bin/eighty_sixed <array of cards>

## Contributing

1. Fork it ( http://github.com/ctountzis/eighty_sixed/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
