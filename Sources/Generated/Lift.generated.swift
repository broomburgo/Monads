// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `lift` definitions; requires `concrete`



import Abstract

// MARK: - ArrayType
extension Array {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Array<A>) -> Array<B> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Array<A1>,Array<A2>) -> Array<B> where ElementType == (A1,A2) -> B {
		return { Array<(A1,A2)>.zip($0,$1).map(function) }
	}
}

public func -  (left: Array<Int>, right: Array<Int>) -> Array<Int> {
	return Array.bilift(-)(left,right)
}

public func -  (left: Array<UInt>, right: Array<UInt>) -> Array<UInt> {
	return Array.bilift(-)(left,right)
}

public func -  (left: Array<Float>, right: Array<Float>) -> Array<Float> {
	return Array.bilift(-)(left,right)
}

public func -  (left: Array<Double>, right: Array<Double>) -> Array<Double> {
	return Array.bilift(-)(left,right)
}

public func *  (left: Array<Int>, right: Array<Int>) -> Array<Int> {
	return Array.bilift(*)(left,right)
}

public func *  (left: Array<UInt>, right: Array<UInt>) -> Array<UInt> {
	return Array.bilift(*)(left,right)
}

public func *  (left: Array<Float>, right: Array<Float>) -> Array<Float> {
	return Array.bilift(*)(left,right)
}

public func *  (left: Array<Double>, right: Array<Double>) -> Array<Double> {
	return Array.bilift(*)(left,right)
}

public func /  (left: Array<Int>, right: Array<Int>) -> Array<Int> {
	return Array.bilift(/)(left,right)
}

public func /  (left: Array<UInt>, right: Array<UInt>) -> Array<UInt> {
	return Array.bilift(/)(left,right)
}

public func /  (left: Array<Float>, right: Array<Float>) -> Array<Float> {
	return Array.bilift(/)(left,right)
}

public func /  (left: Array<Double>, right: Array<Double>) -> Array<Double> {
	return Array.bilift(/)(left,right)
}

// MARK: - DeferredType
extension Deferred {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Deferred<A>) -> Deferred<B> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Deferred<A1>,Deferred<A2>) -> Deferred<B> where ElementType == (A1,A2) -> B {
		return { Deferred<(A1,A2)>.zip($0,$1).map(function) }
	}
}
public func +  (left: Deferred<Int>, right: Deferred<Int>) -> Deferred<Int> {
	return Deferred.bilift(+)(left,right)
}

public func +  (left: Deferred<UInt>, right: Deferred<UInt>) -> Deferred<UInt> {
	return Deferred.bilift(+)(left,right)
}

public func +  (left: Deferred<Float>, right: Deferred<Float>) -> Deferred<Float> {
	return Deferred.bilift(+)(left,right)
}

public func +  (left: Deferred<Double>, right: Deferred<Double>) -> Deferred<Double> {
	return Deferred.bilift(+)(left,right)
}

public func -  (left: Deferred<Int>, right: Deferred<Int>) -> Deferred<Int> {
	return Deferred.bilift(-)(left,right)
}

public func -  (left: Deferred<UInt>, right: Deferred<UInt>) -> Deferred<UInt> {
	return Deferred.bilift(-)(left,right)
}

public func -  (left: Deferred<Float>, right: Deferred<Float>) -> Deferred<Float> {
	return Deferred.bilift(-)(left,right)
}

public func -  (left: Deferred<Double>, right: Deferred<Double>) -> Deferred<Double> {
	return Deferred.bilift(-)(left,right)
}

public func *  (left: Deferred<Int>, right: Deferred<Int>) -> Deferred<Int> {
	return Deferred.bilift(*)(left,right)
}

public func *  (left: Deferred<UInt>, right: Deferred<UInt>) -> Deferred<UInt> {
	return Deferred.bilift(*)(left,right)
}

public func *  (left: Deferred<Float>, right: Deferred<Float>) -> Deferred<Float> {
	return Deferred.bilift(*)(left,right)
}

public func *  (left: Deferred<Double>, right: Deferred<Double>) -> Deferred<Double> {
	return Deferred.bilift(*)(left,right)
}

public func /  (left: Deferred<Int>, right: Deferred<Int>) -> Deferred<Int> {
	return Deferred.bilift(/)(left,right)
}

public func /  (left: Deferred<UInt>, right: Deferred<UInt>) -> Deferred<UInt> {
	return Deferred.bilift(/)(left,right)
}

public func /  (left: Deferred<Float>, right: Deferred<Float>) -> Deferred<Float> {
	return Deferred.bilift(/)(left,right)
}

public func /  (left: Deferred<Double>, right: Deferred<Double>) -> Deferred<Double> {
	return Deferred.bilift(/)(left,right)
}

// MARK: - EffectType
extension Effect {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Effect<A>) -> Effect<B> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Effect<A1>,Effect<A2>) -> Effect<B> where ElementType == (A1,A2) -> B {
		return { Effect<(A1,A2)>.zip($0,$1).map(function) }
	}
}
public func +  (left: Effect<Int>, right: Effect<Int>) -> Effect<Int> {
	return Effect.bilift(+)(left,right)
}

public func +  (left: Effect<UInt>, right: Effect<UInt>) -> Effect<UInt> {
	return Effect.bilift(+)(left,right)
}

public func +  (left: Effect<Float>, right: Effect<Float>) -> Effect<Float> {
	return Effect.bilift(+)(left,right)
}

public func +  (left: Effect<Double>, right: Effect<Double>) -> Effect<Double> {
	return Effect.bilift(+)(left,right)
}

public func -  (left: Effect<Int>, right: Effect<Int>) -> Effect<Int> {
	return Effect.bilift(-)(left,right)
}

public func -  (left: Effect<UInt>, right: Effect<UInt>) -> Effect<UInt> {
	return Effect.bilift(-)(left,right)
}

public func -  (left: Effect<Float>, right: Effect<Float>) -> Effect<Float> {
	return Effect.bilift(-)(left,right)
}

public func -  (left: Effect<Double>, right: Effect<Double>) -> Effect<Double> {
	return Effect.bilift(-)(left,right)
}

public func *  (left: Effect<Int>, right: Effect<Int>) -> Effect<Int> {
	return Effect.bilift(*)(left,right)
}

public func *  (left: Effect<UInt>, right: Effect<UInt>) -> Effect<UInt> {
	return Effect.bilift(*)(left,right)
}

public func *  (left: Effect<Float>, right: Effect<Float>) -> Effect<Float> {
	return Effect.bilift(*)(left,right)
}

public func *  (left: Effect<Double>, right: Effect<Double>) -> Effect<Double> {
	return Effect.bilift(*)(left,right)
}

public func /  (left: Effect<Int>, right: Effect<Int>) -> Effect<Int> {
	return Effect.bilift(/)(left,right)
}

public func /  (left: Effect<UInt>, right: Effect<UInt>) -> Effect<UInt> {
	return Effect.bilift(/)(left,right)
}

public func /  (left: Effect<Float>, right: Effect<Float>) -> Effect<Float> {
	return Effect.bilift(/)(left,right)
}

public func /  (left: Effect<Double>, right: Effect<Double>) -> Effect<Double> {
	return Effect.bilift(/)(left,right)
}

// MARK: - OptionalType
extension Optional {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Optional<A>) -> Optional<B> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Optional<A1>,Optional<A2>) -> Optional<B> where ElementType == (A1,A2) -> B {
		return { Optional<(A1,A2)>.zip($0,$1).map(function) }
	}
}
public func +  (left: Optional<Int>, right: Optional<Int>) -> Optional<Int> {
	return Optional.bilift(+)(left,right)
}

public func +  (left: Optional<UInt>, right: Optional<UInt>) -> Optional<UInt> {
	return Optional.bilift(+)(left,right)
}

public func +  (left: Optional<Float>, right: Optional<Float>) -> Optional<Float> {
	return Optional.bilift(+)(left,right)
}

public func +  (left: Optional<Double>, right: Optional<Double>) -> Optional<Double> {
	return Optional.bilift(+)(left,right)
}

public func -  (left: Optional<Int>, right: Optional<Int>) -> Optional<Int> {
	return Optional.bilift(-)(left,right)
}

public func -  (left: Optional<UInt>, right: Optional<UInt>) -> Optional<UInt> {
	return Optional.bilift(-)(left,right)
}

public func -  (left: Optional<Float>, right: Optional<Float>) -> Optional<Float> {
	return Optional.bilift(-)(left,right)
}

public func -  (left: Optional<Double>, right: Optional<Double>) -> Optional<Double> {
	return Optional.bilift(-)(left,right)
}

public func *  (left: Optional<Int>, right: Optional<Int>) -> Optional<Int> {
	return Optional.bilift(*)(left,right)
}

public func *  (left: Optional<UInt>, right: Optional<UInt>) -> Optional<UInt> {
	return Optional.bilift(*)(left,right)
}

public func *  (left: Optional<Float>, right: Optional<Float>) -> Optional<Float> {
	return Optional.bilift(*)(left,right)
}

public func *  (left: Optional<Double>, right: Optional<Double>) -> Optional<Double> {
	return Optional.bilift(*)(left,right)
}

public func /  (left: Optional<Int>, right: Optional<Int>) -> Optional<Int> {
	return Optional.bilift(/)(left,right)
}

public func /  (left: Optional<UInt>, right: Optional<UInt>) -> Optional<UInt> {
	return Optional.bilift(/)(left,right)
}

public func /  (left: Optional<Float>, right: Optional<Float>) -> Optional<Float> {
	return Optional.bilift(/)(left,right)
}

public func /  (left: Optional<Double>, right: Optional<Double>) -> Optional<Double> {
	return Optional.bilift(/)(left,right)
}

// MARK: - ReaderType
extension Reader {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Reader<A,EnvironmentType>) -> Reader<B,EnvironmentType> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Reader<A1,EnvironmentType>,Reader<A2,EnvironmentType>) -> Reader<B,EnvironmentType> where ElementType == (A1,A2) -> B {
		return { Reader<(A1,A2),EnvironmentType>.zip($0,$1).map(function) }
	}
}
public func + <EnvironmentType> (left: Reader<Int,EnvironmentType>, right: Reader<Int,EnvironmentType>) -> Reader<Int,EnvironmentType> {
	return Reader.bilift(+)(left,right)
}

public func + <EnvironmentType> (left: Reader<UInt,EnvironmentType>, right: Reader<UInt,EnvironmentType>) -> Reader<UInt,EnvironmentType> {
	return Reader.bilift(+)(left,right)
}

public func + <EnvironmentType> (left: Reader<Float,EnvironmentType>, right: Reader<Float,EnvironmentType>) -> Reader<Float,EnvironmentType> {
	return Reader.bilift(+)(left,right)
}

public func + <EnvironmentType> (left: Reader<Double,EnvironmentType>, right: Reader<Double,EnvironmentType>) -> Reader<Double,EnvironmentType> {
	return Reader.bilift(+)(left,right)
}

public func - <EnvironmentType> (left: Reader<Int,EnvironmentType>, right: Reader<Int,EnvironmentType>) -> Reader<Int,EnvironmentType> {
	return Reader.bilift(-)(left,right)
}

public func - <EnvironmentType> (left: Reader<UInt,EnvironmentType>, right: Reader<UInt,EnvironmentType>) -> Reader<UInt,EnvironmentType> {
	return Reader.bilift(-)(left,right)
}

public func - <EnvironmentType> (left: Reader<Float,EnvironmentType>, right: Reader<Float,EnvironmentType>) -> Reader<Float,EnvironmentType> {
	return Reader.bilift(-)(left,right)
}

public func - <EnvironmentType> (left: Reader<Double,EnvironmentType>, right: Reader<Double,EnvironmentType>) -> Reader<Double,EnvironmentType> {
	return Reader.bilift(-)(left,right)
}

public func * <EnvironmentType> (left: Reader<Int,EnvironmentType>, right: Reader<Int,EnvironmentType>) -> Reader<Int,EnvironmentType> {
	return Reader.bilift(*)(left,right)
}

public func * <EnvironmentType> (left: Reader<UInt,EnvironmentType>, right: Reader<UInt,EnvironmentType>) -> Reader<UInt,EnvironmentType> {
	return Reader.bilift(*)(left,right)
}

public func * <EnvironmentType> (left: Reader<Float,EnvironmentType>, right: Reader<Float,EnvironmentType>) -> Reader<Float,EnvironmentType> {
	return Reader.bilift(*)(left,right)
}

public func * <EnvironmentType> (left: Reader<Double,EnvironmentType>, right: Reader<Double,EnvironmentType>) -> Reader<Double,EnvironmentType> {
	return Reader.bilift(*)(left,right)
}

public func / <EnvironmentType> (left: Reader<Int,EnvironmentType>, right: Reader<Int,EnvironmentType>) -> Reader<Int,EnvironmentType> {
	return Reader.bilift(/)(left,right)
}

public func / <EnvironmentType> (left: Reader<UInt,EnvironmentType>, right: Reader<UInt,EnvironmentType>) -> Reader<UInt,EnvironmentType> {
	return Reader.bilift(/)(left,right)
}

public func / <EnvironmentType> (left: Reader<Float,EnvironmentType>, right: Reader<Float,EnvironmentType>) -> Reader<Float,EnvironmentType> {
	return Reader.bilift(/)(left,right)
}

public func / <EnvironmentType> (left: Reader<Double,EnvironmentType>, right: Reader<Double,EnvironmentType>) -> Reader<Double,EnvironmentType> {
	return Reader.bilift(/)(left,right)
}

// MARK: - ResultType
extension Result {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Result<A,ErrorType>) -> Result<B,ErrorType> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Result<A1,ErrorType>,Result<A2,ErrorType>) -> Result<B,ErrorType> where ElementType == (A1,A2) -> B {
		return { Result<(A1,A2),ErrorType>.zip($0,$1).map(function) }
	}
}
public func + <ErrorType> (left: Result<Int,ErrorType>, right: Result<Int,ErrorType>) -> Result<Int,ErrorType> {
	return Result.bilift(+)(left,right)
}

public func + <ErrorType> (left: Result<UInt,ErrorType>, right: Result<UInt,ErrorType>) -> Result<UInt,ErrorType> {
	return Result.bilift(+)(left,right)
}

public func + <ErrorType> (left: Result<Float,ErrorType>, right: Result<Float,ErrorType>) -> Result<Float,ErrorType> {
	return Result.bilift(+)(left,right)
}

public func + <ErrorType> (left: Result<Double,ErrorType>, right: Result<Double,ErrorType>) -> Result<Double,ErrorType> {
	return Result.bilift(+)(left,right)
}

public func - <ErrorType> (left: Result<Int,ErrorType>, right: Result<Int,ErrorType>) -> Result<Int,ErrorType> {
	return Result.bilift(-)(left,right)
}

public func - <ErrorType> (left: Result<UInt,ErrorType>, right: Result<UInt,ErrorType>) -> Result<UInt,ErrorType> {
	return Result.bilift(-)(left,right)
}

public func - <ErrorType> (left: Result<Float,ErrorType>, right: Result<Float,ErrorType>) -> Result<Float,ErrorType> {
	return Result.bilift(-)(left,right)
}

public func - <ErrorType> (left: Result<Double,ErrorType>, right: Result<Double,ErrorType>) -> Result<Double,ErrorType> {
	return Result.bilift(-)(left,right)
}

public func * <ErrorType> (left: Result<Int,ErrorType>, right: Result<Int,ErrorType>) -> Result<Int,ErrorType> {
	return Result.bilift(*)(left,right)
}

public func * <ErrorType> (left: Result<UInt,ErrorType>, right: Result<UInt,ErrorType>) -> Result<UInt,ErrorType> {
	return Result.bilift(*)(left,right)
}

public func * <ErrorType> (left: Result<Float,ErrorType>, right: Result<Float,ErrorType>) -> Result<Float,ErrorType> {
	return Result.bilift(*)(left,right)
}

public func * <ErrorType> (left: Result<Double,ErrorType>, right: Result<Double,ErrorType>) -> Result<Double,ErrorType> {
	return Result.bilift(*)(left,right)
}

public func / <ErrorType> (left: Result<Int,ErrorType>, right: Result<Int,ErrorType>) -> Result<Int,ErrorType> {
	return Result.bilift(/)(left,right)
}

public func / <ErrorType> (left: Result<UInt,ErrorType>, right: Result<UInt,ErrorType>) -> Result<UInt,ErrorType> {
	return Result.bilift(/)(left,right)
}

public func / <ErrorType> (left: Result<Float,ErrorType>, right: Result<Float,ErrorType>) -> Result<Float,ErrorType> {
	return Result.bilift(/)(left,right)
}

public func / <ErrorType> (left: Result<Double,ErrorType>, right: Result<Double,ErrorType>) -> Result<Double,ErrorType> {
	return Result.bilift(/)(left,right)
}

// MARK: - WriterType
extension Writer {
	public static func lift<A,B>(_ function: @escaping (A) -> B) -> (Writer<A,LogType>) -> Writer<B,LogType> where ElementType == (A) -> B {
		return { $0.map(function) }
	}

	public static func bilift<A1,A2,B>(_ function: @escaping (A1,A2) -> B) -> (Writer<A1,LogType>,Writer<A2,LogType>) -> Writer<B,LogType> where ElementType == (A1,A2) -> B {
		return { Writer<(A1,A2),LogType>.zip($0,$1).map(function) }
	}
}
public func + <LogType> (left: Writer<Int,LogType>, right: Writer<Int,LogType>) -> Writer<Int,LogType> {
	return Writer.bilift(+)(left,right)
}

public func + <LogType> (left: Writer<UInt,LogType>, right: Writer<UInt,LogType>) -> Writer<UInt,LogType> {
	return Writer.bilift(+)(left,right)
}

public func + <LogType> (left: Writer<Float,LogType>, right: Writer<Float,LogType>) -> Writer<Float,LogType> {
	return Writer.bilift(+)(left,right)
}

public func + <LogType> (left: Writer<Double,LogType>, right: Writer<Double,LogType>) -> Writer<Double,LogType> {
	return Writer.bilift(+)(left,right)
}

public func - <LogType> (left: Writer<Int,LogType>, right: Writer<Int,LogType>) -> Writer<Int,LogType> {
	return Writer.bilift(-)(left,right)
}

public func - <LogType> (left: Writer<UInt,LogType>, right: Writer<UInt,LogType>) -> Writer<UInt,LogType> {
	return Writer.bilift(-)(left,right)
}

public func - <LogType> (left: Writer<Float,LogType>, right: Writer<Float,LogType>) -> Writer<Float,LogType> {
	return Writer.bilift(-)(left,right)
}

public func - <LogType> (left: Writer<Double,LogType>, right: Writer<Double,LogType>) -> Writer<Double,LogType> {
	return Writer.bilift(-)(left,right)
}

public func * <LogType> (left: Writer<Int,LogType>, right: Writer<Int,LogType>) -> Writer<Int,LogType> {
	return Writer.bilift(*)(left,right)
}

public func * <LogType> (left: Writer<UInt,LogType>, right: Writer<UInt,LogType>) -> Writer<UInt,LogType> {
	return Writer.bilift(*)(left,right)
}

public func * <LogType> (left: Writer<Float,LogType>, right: Writer<Float,LogType>) -> Writer<Float,LogType> {
	return Writer.bilift(*)(left,right)
}

public func * <LogType> (left: Writer<Double,LogType>, right: Writer<Double,LogType>) -> Writer<Double,LogType> {
	return Writer.bilift(*)(left,right)
}

public func / <LogType> (left: Writer<Int,LogType>, right: Writer<Int,LogType>) -> Writer<Int,LogType> {
	return Writer.bilift(/)(left,right)
}

public func / <LogType> (left: Writer<UInt,LogType>, right: Writer<UInt,LogType>) -> Writer<UInt,LogType> {
	return Writer.bilift(/)(left,right)
}

public func / <LogType> (left: Writer<Float,LogType>, right: Writer<Float,LogType>) -> Writer<Float,LogType> {
	return Writer.bilift(/)(left,right)
}

public func / <LogType> (left: Writer<Double,LogType>, right: Writer<Double,LogType>) -> Writer<Double,LogType> {
	return Writer.bilift(/)(left,right)
}

