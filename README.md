
# exposeToGlobal v1.0.0 ![locked](https://img.shields.io/badge/stability-locked-0084B6.svg?style=flat)

```coffee
exposeToGlobal = require "exposeToGlobal"

_foo = exposeToGlobal "foo", 1

global.foo # => 1
_foo.get() # => 1

_foo.set 2
global.foo # => 2

_foo.push 3
global.foo # => 3

_foo.pop()
global.foo # => 2
```
