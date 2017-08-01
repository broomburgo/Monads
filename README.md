# Monads
[![travis-ci](https://travis-ci.org/facile-it/Monads.svg?branch=master)](https://travis-ci.org/facile-it/Monads)
[![codecov](https://codecov.io/gh/facile-it/Monads/branch/master/graph/badge.svg)](https://codecov.io/gh/facile-it/Monads)

Definitions for some monadic types in Swift, along with their [transformers](https://en.wikipedia.org/wiki/Monad_transformer).

Instead of creating new types for the specific monad transformers, protocol-oriented programming is used to extend types with overloaded definitions of `mapT` and `flatMapT` in case of monads incapsulated by other monads.

Most of the code is automatically generated through [Sourcery](https://github.com/krzysztofzablocki/Sourcery).
