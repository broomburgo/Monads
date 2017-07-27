@testable import Monads
import SwiftCheck

extension String: Error {}

extension AnyError: Arbitrary {
	public static var arbitrary: Gen<AnyError> {
		return Gen<AnyError>.compose {
			AnyError.init($0.generate(using: String.arbitrary))
		}
	}
}

struct EffectOf<A>: Arbitrary where A: Arbitrary {
	let getEffect: Effect<A>
	init(_ getEffect: Effect<A>) {
		self.getEffect = getEffect
	}

	static var arbitrary: Gen<EffectOf<A>> {
		return A.arbitrary
			.map { value in Effect<A>.init { value } }
			.map(EffectOf<A>.init)
	}
}
