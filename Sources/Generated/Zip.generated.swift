// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `zip` definitions; requires `concrete`

import Abstract

// MARK: - ArrayType

extension Array {
	public static func zip <A,B> (_ a: A, _ b: B) -> Array<(A.ElementType,B.ElementType)> where A: ArrayType, B: ArrayType, ElementType == (A.ElementType,B.ElementType) {
		return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
	}

	public static func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Array<(A.ElementType,B.ElementType,C.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
	}

	public static func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Array<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType, D: ArrayType, ElementType == (A.ElementType,B.ElementType,C.ElementType,D.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
	}
}

// MARK: - EffectType

extension Effect {
	public static func zip <A,B> (_ a: A, _ b: B) -> Effect<(A.ElementType,B.ElementType)> where A: EffectType, B: EffectType, ElementType == (A.ElementType,B.ElementType) {
		return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
	}

	public static func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Effect<(A.ElementType,B.ElementType,C.ElementType)> where A: EffectType, B: EffectType, C: EffectType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
	}

	public static func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Effect<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: EffectType, B: EffectType, C: EffectType, D: EffectType, ElementType == (A.ElementType,B.ElementType,C.ElementType,D.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
	}
}

// MARK: - OptionalType

extension Optional {
	public static func zip <A,B> (_ a: A, _ b: B) -> Optional<(A.ElementType,B.ElementType)> where A: OptionalType, B: OptionalType, ElementType == (A.ElementType,B.ElementType) {
		return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
	}

	public static func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Optional<(A.ElementType,B.ElementType,C.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
	}

	public static func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Optional<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType, D: OptionalType, ElementType == (A.ElementType,B.ElementType,C.ElementType,D.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
	}
}

// MARK: - ResultType

extension Result {
	public static func zip <A,B> (_ a: A, _ b: B) -> Result<(A.ElementType,B.ElementType),ErrorType> where A: ResultType, B: ResultType, A.ErrorType == ErrorType, B.ErrorType == ErrorType, ElementType == (A.ElementType,B.ElementType) {
		return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
	}

	public static func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Result<(A.ElementType,B.ElementType,C.ElementType),ErrorType> where A: ResultType, B: ResultType, C: ResultType, A.ErrorType == ErrorType, B.ErrorType == ErrorType, C.ErrorType == ErrorType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
	}

	public static func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Result<(A.ElementType,B.ElementType,C.ElementType,D.ElementType),ErrorType> where A: ResultType, B: ResultType, C: ResultType, D: ResultType, A.ErrorType == ErrorType, B.ErrorType == ErrorType, C.ErrorType == ErrorType, D.ErrorType == ErrorType, ElementType == (A.ElementType,B.ElementType,C.ElementType,D.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
	}
}

// MARK: - WriterType

extension Writer {
	public static func zip <A,B> (_ a: A, _ b: B) -> Writer<(A.ElementType,B.ElementType),LogType> where A: WriterType, B: WriterType, A.LogType == LogType, B.LogType == LogType, ElementType == (A.ElementType,B.ElementType) {
		return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
	}

	public static func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Writer<(A.ElementType,B.ElementType,C.ElementType),LogType> where A: WriterType, B: WriterType, C: WriterType, A.LogType == LogType, B.LogType == LogType, C.LogType == LogType, ElementType == (A.ElementType,B.ElementType,C.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
	}

	public static func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Writer<(A.ElementType,B.ElementType,C.ElementType,D.ElementType),LogType> where A: WriterType, B: WriterType, C: WriterType, D: WriterType, A.LogType == LogType, B.LogType == LogType, C.LogType == LogType, D.LogType == LogType, ElementType == (A.ElementType,B.ElementType,C.ElementType,D.ElementType) {
		return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
	}
}

