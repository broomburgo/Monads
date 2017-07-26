// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `WriterType`; requires `concrete`

import Abstract




// MARK: - Level 1 Transformer

extension OptionalType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<A,ElementType.LogType>> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Optional<Writer<A,ElementType.LogType>>) rethrows -> Optional<Writer<A,ElementType.LogType>> {
		return try flatMap { (writer) -> Optional<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Result<Writer<A,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return try flatMap { (writer) -> Result<Writer<A,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return try map { try $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) throws -> Writer<Writer<A,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return try flatMap { (writer) -> Writer<Writer<A,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

// MARK: - Level 2 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>>) rethrows -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return try flatMapT { (writer) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try flatMapT { (writer) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) rethrows -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try flatMapT { (writer) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType>) rethrows -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return try flatMapT { (writer) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapT { (writer) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try flatMapT { (writer) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType>) rethrows -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return try flatMapT { (writer) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try flatMapT { (writer) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try mapT { try $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) throws -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try flatMapT { (writer) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

// MARK: - Level 3 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) rethrows -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return try flatMapTT { (writer) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) rethrows -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return try flatMapTT { (writer) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) rethrows -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return try flatMapTT { (writer) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) rethrows -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return try flatMapTT { (writer) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return try flatMapTT { (writer) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) rethrows -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return try flatMapTT { (writer) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) rethrows -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return try flatMapTT { (writer) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) rethrows -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return try flatMapTT { (writer) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) rethrows -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return try flatMapTT { (writer) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) rethrows -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType>) rethrows -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType>) rethrows -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) rethrows -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) rethrows -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return try flatMapTT { (writer) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) rethrows -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return try flatMapTT { (writer) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType>) rethrows -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return try flatMapTT { (writer) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType>) rethrows -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return try flatMapTT { (writer) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) rethrows -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> A) rethrows -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try mapTT { try $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) throws -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) rethrows -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return try flatMapTT { (writer) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = try transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(newValue,oldLog <> newLog)
			}
		}
	}
}
