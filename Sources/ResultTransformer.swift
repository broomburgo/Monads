
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

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>>) rethrows -> Optional<Optional<Result<A,ElementType.ElementType.ErrorType>>> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.failure($0)) },
			ifCancel: { Optional.init(Result.cancel) })
		}
	}
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<A>>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<A>>>) rethrows -> Optional<Optional<Optional<A>>> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.none) })
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
			ifFailure: { Result.init(Result.failure($0)) },
			ifCancel: { Result.init(Result.cancel) })
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
			ifNone: { Result.init(Optional.none) })
		}
	}
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>>) rethrows -> Optional<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Optional.init(Result.failure($0))) },
			ifCancel: { Optional.init(Optional.init(Result.cancel)) })
		}
	}
}
