// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `lift` definitions; requires `concrete`



import Abstract

// MARK: - ArrayType
extension F {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Array<T> where A: ArrayType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Array<T> where A: ArrayType, B: ArrayType {
		return { Array.zip($0,$1).map(function) }
	}
}

public func - <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Array<Int> where A: ArrayType, A.ElementType == Int {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Array<Float> where A: ArrayType, A.ElementType == Float {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Array<Double> where A: ArrayType, A.ElementType == Double {
	return F.lift { -$0 }(value)
}

// MARK: - DeferredType
extension F {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Deferred<T> where A: DeferredType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Deferred<T> where A: DeferredType, B: DeferredType {
		return { Deferred.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Deferred<Int> where A: DeferredType, A.ElementType == Int {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Deferred<Float> where A: DeferredType, A.ElementType == Float {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Deferred<Double> where A: DeferredType, A.ElementType == Double {
	return F.lift { -$0 }(value)
}

// MARK: - EffectType
extension F {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Effect<T> where A: EffectType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Effect<T> where A: EffectType, B: EffectType {
		return { Effect.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Effect<Int> where A: EffectType, A.ElementType == Int {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Effect<Float> where A: EffectType, A.ElementType == Float {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Effect<Double> where A: EffectType, A.ElementType == Double {
	return F.lift { -$0 }(value)
}

// MARK: - OptionalType
extension F {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Optional<T> where A: OptionalType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Optional<T> where A: OptionalType, B: OptionalType {
		return { Optional.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return F.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return F.bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Optional<Int> where A: OptionalType, A.ElementType == Int {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Optional<Float> where A: OptionalType, A.ElementType == Float {
	return F.lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Optional<Double> where A: OptionalType, A.ElementType == Double {
	return F.lift { -$0 }(value)
}

// MARK: - ResultType
extension F {
	public static func lift<A,T,Z>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Result<T,Z> where A: ResultType, A.ErrorType == Z, Z: Error {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T,Z>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Result<T,Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
		return { Result.zip($0,$1).map(function) }
	}
}
public func + <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return F.bilift(/)(left,right)
}

public prefix func - <A,Z> (value: A) -> Result<Int,Z> where A: ResultType, A.ElementType == Int, A.ErrorType == Z, Z: Error {
	return F.lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Result<Float,Z> where A: ResultType, A.ElementType == Float, A.ErrorType == Z, Z: Error {
	return F.lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Result<Double,Z> where A: ResultType, A.ElementType == Double, A.ErrorType == Z, Z: Error {
	return F.lift { -$0 }(value)
}

// MARK: - WriterType
extension F {
	public static func lift<A,T,Z>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Writer<T,Z> where A: WriterType, A.LogType == Z, Z: Monoid {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T,Z>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Writer<T,Z> where A: WriterType, B: WriterType, A.LogType == Z, B.LogType == Z, Z: Monoid {
		return { Writer.zip($0,$1).map(function) }
	}
}
public func + <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return F.bilift(/)(left,right)
}

public prefix func - <A,Z> (value: A) -> Writer<Int,Z> where A: WriterType, A.ElementType == Int, A.LogType == Z, Z: Monoid {
	return F.lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Writer<Float,Z> where A: WriterType, A.ElementType == Float, A.LogType == Z, Z: Monoid {
	return F.lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Writer<Double,Z> where A: WriterType, A.ElementType == Double, A.LogType == Z, Z: Monoid {
	return F.lift { -$0 }(value)
}

