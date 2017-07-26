// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `OptionalType`; requires `concrete`




// MARK: - Level 1 Transformer

extension OptionalType where ElementType: OptionalType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<A>> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Optional<Optional<A>>) rethrows -> Optional<Optional<A>> {
		return try flatMap { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.none) })
		}
	}
}


extension ResultType where ElementType: OptionalType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Result<Optional<A>,ErrorType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Result<Optional<A>,ErrorType>) rethrows -> Result<Optional<A>,ErrorType> {
		return try flatMap { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Optional.none) })
		}
	}
}


// MARK: - Level 2 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<A>>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<A>>>) rethrows -> Optional<Optional<Optional<A>>> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.init(Optional.none)) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Optional<A>,ElementType.ErrorType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Result<Optional<A>,ElementType.ErrorType>>) rethrows -> Optional<Result<Optional<A>,ElementType.ErrorType>> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Result.init(Optional.none)) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Optional<A>>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Optional<Optional<A>>,ErrorType>) rethrows -> Result<Optional<Optional<A>>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Optional.init(Optional.none)) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Optional<A>,ElementType.ErrorType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Result<Optional<A>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Optional<A>,ElementType.ErrorType>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Result.init(Optional.none)) })
		}
	}
}


// MARK: - Level 3 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<Optional<A>>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<Optional<A>>>>) rethrows -> Optional<Optional<Optional<Optional<A>>>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.init(Optional.init(Optional.none))) })
		}
	}
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>>) rethrows -> Optional<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.init(Result.init(Optional.none))) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Optional<Optional<A>>,ElementType.ErrorType>>) rethrows -> Optional<Result<Optional<Optional<A>>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Result.init(Optional.init(Optional.none))) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Result.init(Result.init(Optional.none))) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Optional<Optional<A>>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Optional<Optional<A>>>,ErrorType>) rethrows -> Result<Optional<Optional<Optional<A>>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Optional.init(Optional.init(Optional.none))) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType>) rethrows -> Result<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Optional.init(Result.init(Optional.none))) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Optional<Optional<A>>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Optional<Optional<A>>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Optional<Optional<A>>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Result.init(Optional.init(Optional.none))) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Result.init(Result.init(Optional.none))) })
		}
	}
}

