# Bloomin

Bloomin is a really quickly hacked together example of a bloom filter.
In fact, I'm not even sure it's written properly. So, use this at your
own risk.

## Usage

```ruby
filter = Bloomin::Filter.new
filter.is_word? "aoeu"   # => false
filter.is_word? "cats"   # => true
```

Bloomin assumes that the file `/usr/share/dict/words` exists. If not,
stuff will blow up.
