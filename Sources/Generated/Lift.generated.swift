// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `lift` definitions; requires `concrete`



import Operadics

// MARK: - ArrayType

public func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Array<T> where A: ArrayType {
	return { $0.map(function) }
}

public func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Array<T> where A: ArrayType, B: ArrayType {
	return { zip($0,$1).map(function) }
}


public func - <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Int> where A: ArrayType, B: ArrayType, A.ElementType == Int, B.ElementType == Int {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<UInt> where A: ArrayType, B: ArrayType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Float> where A: ArrayType, B: ArrayType, A.ElementType == Float, B.ElementType == Float {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Array<Double> where A: ArrayType, B: ArrayType, A.ElementType == Double, B.ElementType == Double {
	return bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Array<Int> where A: ArrayType, A.ElementType == Int {
	return lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Array<Float> where A: ArrayType, A.ElementType == Float {
	return lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Array<Double> where A: ArrayType, A.ElementType == Double {
	return lift { -$0 }(value)
}

// MARK: - OptionalType

public func lift<A,T>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Optional<T> where A: OptionalType {
	return { $0.map(function) }
}

public func bilift<A,B,T>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Optional<T> where A: OptionalType, B: OptionalType {
	return { zip($0,$1).map(function) }
}

public func + <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return bilift(+)(left,right)
}

public func + <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return bilift(+)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return bilift(-)(left,right)
}

public func - <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return bilift(-)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return bilift(*)(left,right)
}

public func * <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return bilift(*)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Int> where A: OptionalType, B: OptionalType, A.ElementType == Int, B.ElementType == Int {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<UInt> where A: OptionalType, B: OptionalType, A.ElementType == UInt, B.ElementType == UInt {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Float> where A: OptionalType, B: OptionalType, A.ElementType == Float, B.ElementType == Float {
	return bilift(/)(left,right)
}

public func / <A,B> (left: A, right: B) -> Optional<Double> where A: OptionalType, B: OptionalType, A.ElementType == Double, B.ElementType == Double {
	return bilift(/)(left,right)
}

public prefix func - <A> (value: A) -> Optional<Int> where A: OptionalType, A.ElementType == Int {
	return lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Optional<Float> where A: OptionalType, A.ElementType == Float {
	return lift { -$0 }(value)
}

public prefix func - <A> (value: A) -> Optional<Double> where A: OptionalType, A.ElementType == Double {
	return lift { -$0 }(value)
}

// MARK: - ResultType

public func lift<A,T,Z>(_ function: @escaping (A.ElementType) -> T) -> (A) -> Result<T,Z> where A: ResultType, A.ErrorType == Z, Z: Error {
	return { $0.map(function) }
}

public func bilift<A,B,T,Z>(_ function: @escaping (A.ElementType,B.ElementType) -> T) -> (A,B) -> Result<T,Z> where A: ResultType, B: ResultType, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return { zip($0,$1).map(function) }
}

public func + <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(+)(left,right)
}

public func + <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(+)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(-)(left,right)
}

public func - <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(-)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(*)(left,right)
}

public func * <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(*)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Int,Z> where A: ResultType, B: ResultType, A.ElementType == Int, B.ElementType == Int, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<UInt,Z> where A: ResultType, B: ResultType, A.ElementType == UInt, B.ElementType == UInt, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Float,Z> where A: ResultType, B: ResultType, A.ElementType == Float, B.ElementType == Float, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(/)(left,right)
}

public func / <A,B,Z> (left: A, right: B) -> Result<Double,Z> where A: ResultType, B: ResultType, A.ElementType == Double, B.ElementType == Double, A.ErrorType == Z, B.ErrorType == Z, Z: Error {
	return bilift(/)(left,right)
}

public prefix func - <A,Z> (value: A) -> Result<Int,Z> where A: ResultType, A.ElementType == Int, A.ErrorType == Z, Z: Error {
	return lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Result<Float,Z> where A: ResultType, A.ElementType == Float, A.ErrorType == Z, Z: Error {
	return lift { -$0 }(value)
}

public prefix func - <A,Z> (value: A) -> Result<Double,Z> where A: ResultType, A.ElementType == Double, A.ErrorType == Z, Z: Error {
	return lift { -$0 }(value)
}

