// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

//: `zip` definitions; requires `concrete`

// MARK: - ArrayType

public func zip <A,B> (_ a: A, _ b: B) -> Array<(A.ElementType,B.ElementType)> where A: ArrayType, B: ArrayType {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Array<(A.ElementType,B.ElementType,C.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Array<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: ArrayType, B: ArrayType, C: ArrayType, D: ArrayType {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

// MARK: - OptionalType

public func zip <A,B> (_ a: A, _ b: B) -> Optional<(A.ElementType,B.ElementType)> where A: OptionalType, B: OptionalType {
    return a.flatMap { aValue in b.map { bValue in (aValue,bValue) } }
}

public func zip <A,B,C> (_ a: A, _ b: B, _ c: C) -> Optional<(A.ElementType,B.ElementType,C.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType {
	return a.flatMap { aValue in b.flatMap { bValue in c.map { cValue in (aValue,bValue,cValue) } } }
}

public func zip <A,B,C,D> (_ a: A, _ b: B, _ c: C, _ d: D) -> Optional<(A.ElementType,B.ElementType,C.ElementType,D.ElementType)> where A: OptionalType, B: OptionalType, C: OptionalType, D: OptionalType {
	return a.flatMap { aValue in b.flatMap { bValue in c.flatMap { cValue in d.map { dValue in (aValue,bValue,cValue,dValue) } } } }
}

