# AttrAsker

Monkey patches the `attr_asker` method onto Ruby's Class class.

The 'attr_asker' method functions just like attr_reader, only it generates interrogative methods which return the boolean value of the supplied instance variables.

```ruby
class Example

  attr_asker :alive

  def initialize
    @alive = true
  end

end

example = Example.new

example.alive? # => true
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'attr_asker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_asker

## Usage

Just require `attr_asker` and then call in in the class definition just as you would `attr_reader` or `attr_writer`.

```ruby
require 'attr_asker'

class Example

  attr_asker :on, :off, :truthy, :falsy

  def initialize
    @on = true
    @off = false
    @truthy = 1
    @falsy = nil
  end

end

example.on? # => true
example.off? # => false
example.truthy? # => true
example.falsy? # => false

```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kitlangton/attr_asker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

