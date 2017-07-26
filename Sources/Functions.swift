import Abstract

enum F {
	public static func identity <A> (_ value: A) -> A {
		return value
	}

	public static func constant <A,B> (_ value: B) -> (A) -> B {
		return { _ in value }
	}

	public static func constant <A,B> (_ value: @escaping () -> B) -> (A) -> B {
		return { _ in value() }
	}

	public static func ignore <A> (_ value: A) {}

	public static func apply <A,B> (_ function: (A) throws -> B, _ value: A) rethrows -> B {
		return try function(value)
	}

	public static func compose <A,B,C> (_ first: @escaping (A) -> B, _ second: @escaping (B) -> C) -> (A) -> C {
		return { second(first($0)) }
	}

	public static func compose <A,B,C> (_ first: @escaping (A) throws -> B, _ second: @escaping (B) -> C) -> (A) throws -> C {
		return { try second(first($0)) }
	}

	public static func compose <A,B,C> (_ first: @escaping (A) -> B, _ second: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try second(first($0)) }
	}

	public static func compose <A,B,C> (_ first: @escaping (A) throws -> B, _ second: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try second(first($0)) }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) -> (B) -> C) -> (B) -> (A) -> C {
		return { b in { a in function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) -> C) -> (B) -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}
}

public func § <A,B> (_ function: (A) throws -> B, _ value: A) rethrows -> B {
	return try F.apply(function, value)
}

public func • <A,B,C> (_ second: @escaping (B) -> C, _ first: @escaping (A) -> B) -> (A) -> C {
	return F.compose(first, second)
}

public func • <A,B,C> (_ second: @escaping (B) -> C, _ first: @escaping (A) throws -> B) -> (A) throws -> C {
	return F.compose(first, second)
}

public func • <A,B,C> (_ second: @escaping (B) throws -> C, _ first: @escaping (A) -> B) -> (A) throws -> C {
	return F.compose(first, second)
}

public func • <A,B,C> (_ second: @escaping (B) throws -> C, _ first: @escaping (A) throws -> B) -> (A) throws -> C {
	return F.compose(first, second)
}

public func curry<A, B, C>(_ function: @escaping (A, B) -> C) -> (A) -> (B) -> C {
	return { (a: A) -> (B) -> C in
		{ (b: B) -> C in
			function(a, b)
		}
	}
}

