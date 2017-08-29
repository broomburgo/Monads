// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `lift` definitions; requires `concrete`


import Abstract

// MARK: - ArrayType
extension Array {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Array<T> where A: ArrayType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Array<T> where A: ArrayType, B: ArrayType, ElementType == (A.ElementType,B.ElementType) {
		return { Array.zip($0,$1).map(function) }
	}
}

public func - <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return Array.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return Array.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return Array.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return Array.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return Array.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return Array.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return Array.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return Array.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return Array.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return Array.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return Array.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return Array.bilift(/)(left,right)
}

// MARK: - DeferredType
extension Deferred {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Deferred<T> where A: DeferredType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Deferred<T> where A: DeferredType, B: DeferredType, ElementType == (A.ElementType,B.ElementType) {
		return { Deferred.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return Deferred.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return Deferred.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return Deferred.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return Deferred.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return Deferred.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return Deferred.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return Deferred.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return Deferred.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return Deferred.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return Deferred.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return Deferred.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return Deferred.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Int> where A: DeferredType, B: DeferredType, A.ElementType == Int, B.ElementType == Int {
	return Deferred.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<UInt> where A: DeferredType, B: DeferredType, A.ElementType == UInt, B.ElementType == UInt {
	return Deferred.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Float> where A: DeferredType, B: DeferredType, A.ElementType == Float, B.ElementType == Float {
	return Deferred.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Deferred<Double> where A: DeferredType, B: DeferredType, A.ElementType == Double, B.ElementType == Double {
	return Deferred.bilift(/)(left,right)
}

// MARK: - EffectType
extension Effect {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Effect<T> where A: EffectType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Effect<T> where A: EffectType, B: EffectType, ElementType == (A.ElementType,B.ElementType) {
		return { Effect.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return Effect.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return Effect.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return Effect.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return Effect.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return Effect.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return Effect.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return Effect.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return Effect.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return Effect.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return Effect.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return Effect.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return Effect.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Int> where A: EffectType, B: EffectType, A.ElementType == Int, B.ElementType == Int {
	return Effect.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<UInt> where A: EffectType, B: EffectType, A.ElementType == UInt, B.ElementType == UInt {
	return Effect.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Float> where A: EffectType, B: EffectType, A.ElementType == Float, B.ElementType == Float {
	return Effect.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Effect<Double> where A: EffectType, B: EffectType, A.ElementType == Double, B.ElementType == Double {
	return Effect.bilift(/)(left,right)
}

// MARK: - OptionalType
extension Optional {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Optional<T> where A: OptionalType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Optional<T> where A: OptionalType, B: OptionalType, ElementType == (A.ElementType,B.ElementType) {
		return { Optional.zip($0,$1).map(function) }
	}
}
public func + <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return Optional.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return Optional.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return Optional.bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return Optional.bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return Optional.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return Optional.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return Optional.bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return Optional.bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return Optional.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return Optional.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return Optional.bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return Optional.bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return Optional.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return Optional.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return Optional.bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return Optional.bilift(/)(left,right)
}

// MARK: - ReaderType
extension Reader {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Reader<T,EnvironmentType> where A: ReaderType, A.EnvironmentType == EnvironmentType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Reader<T,EnvironmentType> where A: ReaderType, B: ReaderType, A.EnvironmentType == EnvironmentType, B.EnvironmentType == EnvironmentType, ElementType == (A.ElementType,B.ElementType) {
		return { Reader.zip($0,$1).map(function) }
	}
}
public func + <A,B,Z> (left: A, right: B) -> Reader<Int,Z> where A: ReaderType, B: ReaderType, A.ElementType == Int, B.ElementType == Int, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Reader<UInt,Z> where A: ReaderType, B: ReaderType, A.ElementType == UInt, B.ElementType == UInt, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Reader<Float,Z> where A: ReaderType, B: ReaderType, A.ElementType == Float, B.ElementType == Float, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Reader<Double,Z> where A: ReaderType, B: ReaderType, A.ElementType == Double, B.ElementType == Double, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Reader<Int,Z> where A: ReaderType, B: ReaderType, A.ElementType == Int, B.ElementType == Int, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Reader<UInt,Z> where A: ReaderType, B: ReaderType, A.ElementType == UInt, B.ElementType == UInt, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Reader<Float,Z> where A: ReaderType, B: ReaderType, A.ElementType == Float, B.ElementType == Float, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Reader<Double,Z> where A: ReaderType, B: ReaderType, A.ElementType == Double, B.ElementType == Double, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Reader<Int,Z> where A: ReaderType, B: ReaderType, A.ElementType == Int, B.ElementType == Int, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Reader<UInt,Z> where A: ReaderType, B: ReaderType, A.ElementType == UInt, B.ElementType == UInt, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Reader<Float,Z> where A: ReaderType, B: ReaderType, A.ElementType == Float, B.ElementType == Float, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Reader<Double,Z> where A: ReaderType, B: ReaderType, A.ElementType == Double, B.ElementType == Double, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Reader<Int,Z> where A: ReaderType, B: ReaderType, A.ElementType == Int, B.ElementType == Int, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Reader<UInt,Z> where A: ReaderType, B: ReaderType, A.ElementType == UInt, B.ElementType == UInt, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Reader<Float,Z> where A: ReaderType, B: ReaderType, A.ElementType == Float, B.ElementType == Float, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Reader<Double,Z> where A: ReaderType, B: ReaderType, A.ElementType == Double, B.ElementType == Double, A.EnvironmentType == Z, B.EnvironmentType == Z {
	return Reader.bilift(/)(left,right)
}

// MARK: - ResultType
extension Result {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Result<T,ErrorType> where A: ResultType, A.ErrorType == ErrorType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Result<T,ErrorType> where A: ResultType, B: ResultType, A.ErrorType == ErrorType, B.ErrorType == ErrorType, ElementType == (A.ElementType,B.ElementType) {
		return { Result.zip($0,$1).map(function) }
	}
}
public func + <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return Result.bilift(/)(left,right)
}

// MARK: - WriterType
extension Writer {
	public static func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Writer<T,LogType> where A: WriterType, A.LogType == LogType {
		return { $0.map(function) }
	}

	public static func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Writer<T,LogType> where A: WriterType, B: WriterType, A.LogType == LogType, B.LogType == LogType, ElementType == (A.ElementType,B.ElementType) {
		return { Writer.zip($0,$1).map(function) }
	}
}
public func + <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Int,Z> where A: WriterType, B: WriterType, A.ElementType == Int, B.ElementType == Int, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<UInt,Z> where A: WriterType, B: WriterType, A.ElementType == UInt, B.ElementType == UInt, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Float,Z> where A: WriterType, B: WriterType, A.ElementType == Float, B.ElementType == Float, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Writer<Double,Z> where A: WriterType, B: WriterType, A.ElementType == Double, B.ElementType == Double, A.LogType == Z, B.LogType == Z, Z: Monoid {
	return Writer.bilift(/)(left,right)
}

