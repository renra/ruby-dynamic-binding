# Dynamic Binding for Ruby Procs

All based on [this](https://github.com/niklasb/ruby-dynamic-binding)

[![wercker status](https://app.wercker.com/status/e05b98128a0d706904d38045d1cdb6a4/m "wercker status")](https://app.wercker.com/project/bykey/e05b98128a0d706904d38045d1cdb6a4)

## How to use

```ruby
require 'contextual_proc'

def doubler
  ContextualProc.new { number*2 }
end

# In a completely different context
number = 4
doubler.apply(binding)
# => 8
```
