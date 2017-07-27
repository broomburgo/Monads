// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `transformer` definitions for `WriterType`; requires `concrete`

import Abstract




// MARK: - Level 1 Transformer

extension OptionalType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Optional<Writer<A,ElementType.LogType>> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Optional<Writer<A,ElementType.LogType>>) -> Optional<Writer<A,ElementType.LogType>> {
		return flatMap { (writer) -> Optional<Writer<A,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Optional<Writer<A,T.ElementType.LogType>>) -> Optional<Writer<A,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension ResultType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Result<Writer<A,ElementType.LogType>,ErrorType>) -> Result<Writer<A,ElementType.LogType>,ErrorType> {
		return flatMap { (writer) -> Result<Writer<A,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Result<Writer<A,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<A,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

extension WriterType where ElementType: WriterType {
	public func mapT <A> (_ transform: @escaping (ElementType.ElementType) -> A) -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return map { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: @escaping (ElementType.ElementType) -> Writer<Writer<A,ElementType.LogType>,LogType>) -> Writer<Writer<A,ElementType.LogType>,LogType> {
		return flatMap { (writer) -> Writer<Writer<A,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.map {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType) -> Writer<Writer<A,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<A,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType {
	return object.flatMapT(transform)
}

// MARK: - Level 2 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> {
		return flatMapT { (writer) -> Optional<Optional<Writer<A,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<A,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<A,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapT { (writer) -> Optional<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapT { (writer) -> Optional<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapT { (writer) -> Result<Optional<Writer<A,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapT { (writer) -> Result<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapT { (writer) -> Result<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Result<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> {
		return flatMapT { (writer) -> Writer<Optional<Writer<A,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<A,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapT { (writer) -> Writer<Result<Writer<A,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType {
	public func mapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapT { $0.map(transform) }
	}

	public func flatMapTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapT { (writer) -> Writer<Writer<Writer<A,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func ||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<A,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType {
	return object.flatMapTT(transform)
}

// MARK: - Level 3 Transformer

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> {
		return flatMapTT { (writer) -> Optional<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>>) -> Optional<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> {
		return flatMapTT { (writer) -> Optional<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>>) -> Optional<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> {
		return flatMapTT { (writer) -> Optional<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>>) -> Optional<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>> where T: OptionalType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>>) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>>) -> Optional<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>>) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>>) -> Optional<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>>) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> {
		return flatMapTT { (writer) -> Optional<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>>) -> Optional<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>> where T: OptionalType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>>) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>>) -> Optional<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>>) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>>) -> Optional<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension OptionalType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>>) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> {
		return flatMapTT { (writer) -> Optional<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Optional<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>>) -> Optional<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>> where T: OptionalType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType>) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType>) -> Result<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType>) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType>) -> Result<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType>) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> {
		return flatMapTT { (writer) -> Result<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType>) -> Result<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.ErrorType> where T: ResultType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType>) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType>) -> Result<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.ErrorType> where T: ResultType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType>) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension ResultType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType>) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> {
		return flatMapTT { (writer) -> Result<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,ErrorType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Result<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType>) -> Result<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.ErrorType> where T: ResultType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType>) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType>) -> Writer<Optional<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType>) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType>) -> Writer<Optional<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: OptionalType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType>) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> {
		return flatMapTT { (writer) -> Writer<Optional<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType>) -> Writer<Optional<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>>,T.LogType> where T: WriterType, T.ElementType: OptionalType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType>) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: ResultType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType>) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> {
		return flatMapTT { (writer) -> Writer<Result<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.ErrorType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType>) -> Writer<Result<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.ErrorType>,T.LogType> where T: WriterType, T.ElementType: ResultType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: OptionalType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType>) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Optional<Writer<A,ElementType.ElementType.ElementType.LogType>>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Optional<Writer<A,T.ElementType.ElementType.ElementType.LogType>>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: OptionalType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: ResultType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType>) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Result<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.ErrorType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Result<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.ErrorType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: ResultType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}

extension WriterType where ElementType: WriterType, ElementType.ElementType: WriterType, ElementType.ElementType.ElementType: WriterType {
	public func mapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> A) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return mapTT { $0.map(transform) }
	}

	public func flatMapTTT <A> (_ transform: @escaping (ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType>) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> {
		return flatMapTT { (writer) -> Writer<Writer<Writer<Writer<A,ElementType.ElementType.ElementType.LogType>,ElementType.ElementType.LogType>,ElementType.LogType>,LogType> in
			let (oldValue,oldLog) = writer.run
			let newObject = transform(oldValue)
			return newObject.mapTT {
				let (newValue,newLog) = $0.run
				return Writer.init(value: newValue, log: oldLog <> newLog)
			}
		}
	}
}

public func |||>>- <T,A> (_ object: T, _ transform: @escaping (T.ElementType.ElementType.ElementType.ElementType) -> Writer<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType>) -> Writer<Writer<Writer<Writer<A,T.ElementType.ElementType.ElementType.LogType>,T.ElementType.ElementType.LogType>,T.ElementType.LogType>,T.LogType> where T: WriterType, T.ElementType: WriterType, T.ElementType.ElementType: WriterType, T.ElementType.ElementType.ElementType: WriterType {
	return object.flatMapTTT(transform)
}
