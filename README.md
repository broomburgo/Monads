# Monads
[![travis-ci](https://travis-ci.org/facile-it/Monads.svg?branch=master)](https://travis-ci.org/facile-it/Monads)
[![codecov](https://codecov.io/gh/facile-it/Monads/branch/master/graph/badge.svg)](https://codecov.io/gh/facile-it/Monads)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Definitions for some monadic types in Swift, along with their [transformers](https://en.wikipedia.org/wiki/Monad_transformer).

Instead of creating new types for the specific monad transformers, protocol-oriented programming is used to extend types with overloaded definitions of `mapT` and `flatMapT` in case of monads incapsulated by other monads.

Most of the code is automatically generated through [Sourcery](https://github.com/krzysztofzablocki/Sourcery).

------

The project depends on [`Abstract`](https://github.com/typelift/Abstract/), that depends itself on [`Operadics`](https://github.com/typelift/Operadics). Because `Operadics` is not ready for Carthage, it has to be built manually.

This means that `carthage bootstrap` or `carthage update` will fail in the build phase. Just let them fail (so at least the dependencies will be checked out), then run (from the project folder):

`bash Carthage/Checkouts/Monads/buildOperadics.sh`.

Finally, run again `carthage bootstrap` or `carthage update`.

Sorry for the inconvenience.
