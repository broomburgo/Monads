// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `ResultType`; requires `concrete`




// MARK: - Level 1 Transformer

extension OptionalType where ElementType: ResultType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Optional<Result<A,ElementType.ErrorType>> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Optional<Result<A,ElementType.ErrorType>>) rethrows -> Optional<Result<A,ElementType.ErrorType>> {
		return try flatMap { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.failure($0)) },
			ifCancel: { Optional.init(Result.cancel) })
		}
	}
}


extension ResultType where ElementType: ResultType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Result<Result<A,ElementType.ErrorType>,ErrorType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Result<Result<A,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<A,ElementType.ErrorType>,ErrorType> {
		return try flatMap { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Result.failure($0)) },
			ifCancel: { Result.init(Result.cancel) })
		}
	}
}


// MARK: - Level 2 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>>) rethrows -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Optional.init(Result.failure($0))) },
			ifCancel: { Optional.init(Optional.init(Result.cancel)) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.init(Result.failure($0))) },
			ifCancel: { Optional.init(Result.init(Result.cancel)) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Result<A,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Optional<Result<A,ElementType.ElementType.ErrorType>>,ErrorType>) rethrows -> Result<Optional<Result<A,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Optional.init(Result.failure($0))) },
			ifCancel: { Result.init(Optional.init(Result.cancel)) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Result.init(Result.failure($0))) },
			ifCancel: { Result.init(Result.init(Result.cancel)) })
		}
	}
}


// MARK: - Level 3 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) rethrows -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}


extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>>) rethrows -> Optional<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>>) rethrows -> Optional<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}


extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType>) rethrows -> Result<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}


extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType>) rethrows -> Result<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}


extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

