// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `OptionalType`; requires `concrete`



import Abstract

infix operator |>>- : MonadPrecedenceLeft

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

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) throws -> Optional<Optional<A>>) rethrows -> Optional<Optional<A>> where T: OptionalType, T.ElementType: OptionalType {
	return try object.flatMapT(transform)
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

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) throws -> Result<Optional<A>,T.ErrorType>) rethrows -> Result<Optional<A>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType {
	return try object.flatMapT(transform)
}

extension WriterType where ElementType: OptionalType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<A>,LogType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Writer<Optional<A>,LogType>) rethrows -> Writer<Optional<A>,LogType> {
		return try flatMap { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Optional.none) })
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) throws -> Writer<Optional<A>,T.LogType>) rethrows -> Writer<Optional<A>,T.LogType> where T: WriterType, T.ElementType: OptionalType {
	return try object.flatMapT(transform)
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

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Optional<A>,ElementType.LogType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Writer<Optional<A>,ElementType.LogType>>) rethrows -> Optional<Writer<Optional<A>,ElementType.LogType>> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Writer.init(Optional.none)) })
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

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Optional<A>,ElementType.LogType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Writer<Optional<A>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Optional<A>,ElementType.LogType>,ErrorType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Writer.init(Optional.none)) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Optional<A>>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Optional<Optional<A>>,LogType>) rethrows -> Writer<Optional<Optional<A>>,LogType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Optional.init(Optional.none)) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Optional<A>,ElementType.ErrorType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Result<Optional<A>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Optional<A>,ElementType.ErrorType>,LogType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Result.init(Optional.none)) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Optional<A>,ElementType.LogType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Writer<Optional<A>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Optional<A>,ElementType.LogType>,LogType> {
		return try flatMapT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Writer.init(Optional.none)) })
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

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>>) rethrows -> Optional<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Optional.init(Writer.init(Optional.none))) })
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

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Result.init(Writer.init(Optional.none))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Optional<Optional<A>>,ElementType.LogType>>) rethrows -> Optional<Writer<Optional<Optional<A>>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Writer.init(Optional.init(Optional.none))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) rethrows -> Optional<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Writer.init(Result.init(Optional.none))) })
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>>) rethrows -> Optional<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Optional.init(Writer.init(Writer.init(Optional.none))) })
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

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType>) rethrows -> Result<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Optional.init(Writer.init(Optional.none))) })
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

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Result.init(Writer.init(Optional.none))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Optional<Optional<A>>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Optional<Optional<A>>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Optional<Optional<A>>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Writer.init(Optional.init(Optional.none))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Writer.init(Result.init(Optional.none))) })
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Result.init(Writer.init(Writer.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Optional<Optional<A>>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Optional<Optional<A>>>,LogType>) rethrows -> Writer<Optional<Optional<Optional<A>>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Optional.init(Optional.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType>) rethrows -> Writer<Optional<Result<Optional<A>,ElementType.ElementType.ErrorType>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Optional.init(Result.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType>) rethrows -> Writer<Optional<Writer<Optional<A>,ElementType.ElementType.LogType>>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Optional.init(Writer.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Optional<Optional<A>>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Optional<Optional<A>>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Optional<Optional<A>>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Result.init(Optional.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Result.init(Result.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Result.init(Writer.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Optional<Optional<A>>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Optional<Optional<A>>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Optional<Optional<A>>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Writer.init(Optional.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Result<Optional<A>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Writer.init(Result.init(Optional.none))) })
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: OptionalType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Writer<Optional<A>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try flatMapTT { try $0.run(
			ifSome: { try transform($0) },
			ifNone: { Writer.init(Writer.init(Writer.init(Optional.none))) })
		}
	}
}
