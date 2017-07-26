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

extension WriterType where ElementType: ResultType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Writer<Result<A,ElementType.ErrorType>,LogType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Writer<Result<A,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<A,ElementType.ErrorType>,LogType> {
		return try flatMap { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Result.failure($0)) },
			ifCancel: { Writer.init(Result.cancel) })
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

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>>) rethrows -> Optional<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Writer.init(Result.failure($0))) },
			ifCancel: { Optional.init(Writer.init(Result.cancel)) })
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

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Writer.init(Result.failure($0))) },
			ifCancel: { Result.init(Writer.init(Result.cancel)) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Result<A,ElementType.ElementType.ErrorType>>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Optional<Result<A,ElementType.ElementType.ErrorType>>,LogType>) rethrows -> Writer<Optional<Result<A,ElementType.ElementType.ErrorType>>,LogType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Optional.init(Result.failure($0))) },
			ifCancel: { Writer.init(Optional.init(Result.cancel)) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Result<A,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Result.init(Result.failure($0))) },
			ifCancel: { Writer.init(Result.init(Result.cancel)) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Result<A,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try flatMapT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Writer.init(Result.failure($0))) },
			ifCancel: { Writer.init(Writer.init(Result.cancel)) })
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

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>>) rethrows -> Optional<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Optional.init(Writer.init(Result.cancel))) })
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

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>>) rethrows -> Optional<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) rethrows -> Optional<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>>) rethrows -> Optional<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Optional.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Optional.init(Writer.init(Writer.init(Result.cancel))) })
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

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType>) rethrows -> Result<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Optional.init(Writer.init(Result.cancel))) })
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

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Result.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Result.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType>) rethrows -> Writer<Optional<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Optional.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Optional.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType>) rethrows -> Writer<Optional<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Optional.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Result.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType>) rethrows -> Writer<Optional<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Optional.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Optional.init(Writer.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Result.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Optional.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Result.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Result.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Result.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Result.init(Writer.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Optional<Result<A,ElementType.ElementType.ElementType.ErrorType>>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Writer.init(Optional.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Optional.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Result<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Writer.init(Result.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Result.init(Result.cancel))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: ResultType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Writer<Result<A,ElementType.ElementType.ElementType.ErrorType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSuccess: { try transform($0) },
			ifFailure: { Writer.init(Writer.init(Writer.init(Result.failure($0)))) },
			ifCancel: { Writer.init(Writer.init(Writer.init(Result.cancel))) })
		}
	}
}
