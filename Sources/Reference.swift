public final class Ref<T> {
	public var value: T {
		didSet {
			notifyChange()
		}
	}

	public init(_ value: T) {
		self.value = value
	}

	public func add(listener: AnyHashable, onNext: @escaping (T) ->()) {
		listeners[listener] = onNext
	}

	public func remove(listener: AnyHashable) {
		listeners[listener] = nil
	}

	private var listeners: [AnyHashable : (T) -> ()] = [:]

	private func notifyChange() {
		listeners.values.forEach { $0(value) }
	}
}
