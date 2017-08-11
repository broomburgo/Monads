import Abstract

public enum F {
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

	public static func duplicate<A> (_ a: A) -> (A,A) {
		return (a,a)
	}

	public static func duplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A) -> (B,B) {
		return { tuple in (f(tuple.0),f(tuple.1)) }
	}

	public static func triplicate <A> (_ a: A) -> (A,A,A) {
		return (a,a,a)
	}

	public static func triplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A,A) -> (B,B,B) {
		return { tuple in (f(tuple.0),f(tuple.1),f(tuple.2)) }
	}

	public static func curry<A, B, C>(_ function: @escaping (A, B) -> C) -> (A) -> (B) -> C {
		return { (a: A) -> (B) -> C in
			{ (b: B) -> C in
				function(a, b)
			}
		}
	}

	public static func curry<A, B, C, D>(_ function: @escaping (A, B, C) -> D) -> (A) -> (B) -> (C) -> D {
		return { (a: A) -> (B) -> (C) -> D in
			{ (b: B) -> (C) -> D in
				{ (c: C) -> D in
					function(a, b, c)
				}
			}
		}
	}

	public static func curry<A, B, C, D, E>(_ function: @escaping (A, B, C, D) -> E) -> (A) -> (B) -> (C) -> (D) -> E {
		return { (a: A) -> (B) -> (C) -> (D) -> E in
			{ (b: B) -> (C) -> (D) -> E in
				{ (c: C) -> (D) -> E in
					{ (d: D) -> E in
						function(a, b, c, d)
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F>(_ function: @escaping (A, B, C, D, E) -> F) -> (A) -> (B) -> (C) -> (D) -> (E) -> F {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> F in
			{ (b: B) -> (C) -> (D) -> (E) -> F in
				{ (c: C) -> (D) -> (E) -> F in
					{ (d: D) -> (E) -> F in
						{ (e: E) -> F in
							function(a, b, c, d, e)
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G>(_ function: @escaping (A, B, C, D, E, F) -> G) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> G in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> G in
				{ (c: C) -> (D) -> (E) -> (F) -> G in
					{ (d: D) -> (E) -> (F) -> G in
						{ (e: E) -> (F) -> G in
							{ (f: F) -> G in
								function(a, b, c, d, e, f)
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H>(_ function: @escaping (A, B, C, D, E, F, G) -> H) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> H in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> H in
					{ (d: D) -> (E) -> (F) -> (G) -> H in
						{ (e: E) -> (F) -> (G) -> H in
							{ (f: F) -> (G) -> H in
								{ (g: G) -> H in
									function(a, b, c, d, e, f, g)
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I>(_ function: @escaping (A, B, C, D, E, F, G, H) -> I) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> I in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> I in
						{ (e: E) -> (F) -> (G) -> (H) -> I in
							{ (f: F) -> (G) -> (H) -> I in
								{ (g: G) -> (H) -> I in
									{ (h: H) -> I in
										function(a, b, c, d, e, f, g, h)
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J>(_ function: @escaping (A, B, C, D, E, F, G, H, I) -> J) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> J in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> J in
							{ (f: F) -> (G) -> (H) -> (I) -> J in
								{ (g: G) -> (H) -> (I) -> J in
									{ (h: H) -> (I) -> J in
										{ (i: I) -> J in
											function(a, b, c, d, e, f, g, h, i)
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J) -> K) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> K in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> K in
								{ (g: G) -> (H) -> (I) -> (J) -> K in
									{ (h: H) -> (I) -> (J) -> K in
										{ (i: I) -> (J) -> K in
											{ (j: J) -> K in
												function(a, b, c, d, e, f, g, h, i, j)
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K) -> L) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> L in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> L in
									{ (h: H) -> (I) -> (J) -> (K) -> L in
										{ (i: I) -> (J) -> (K) -> L in
											{ (j: J) -> (K) -> L in
												{ (k: K) -> L in
													function(a, b, c, d, e, f, g, h, i, j, k)
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L) -> M) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> M in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> M in
										{ (i: I) -> (J) -> (K) -> (L) -> M in
											{ (j: J) -> (K) -> (L) -> M in
												{ (k: K) -> (L) -> M in
													{ (l: L) -> M in
														function(a, b, c, d, e, f, g, h, i, j, k, l)
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M) -> N) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> N in
										{ (i: I) -> (J) -> (K) -> (L) -> (M) -> N in
											{ (j: J) -> (K) -> (L) -> (M) -> N in
												{ (k: K) -> (L) -> (M) -> N in
													{ (l: L) -> (M) -> N in
														{ (m: M) -> N in
															function(a, b, c, d, e, f, g, h, i, j, k, l, m)
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N) -> O) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
										{ (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> O in
											{ (j: J) -> (K) -> (L) -> (M) -> (N) -> O in
												{ (k: K) -> (L) -> (M) -> (N) -> O in
													{ (l: L) -> (M) -> (N) -> O in
														{ (m: M) -> (N) -> O in
															{ (n: N) -> O in
																function(a, b, c, d, e, f, g, h, i, j, k, l, m, n)
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O) -> P) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
										{ (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
											{ (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> P in
												{ (k: K) -> (L) -> (M) -> (N) -> (O) -> P in
													{ (l: L) -> (M) -> (N) -> (O) -> P in
														{ (m: M) -> (N) -> (O) -> P in
															{ (n: N) -> (O) -> P in
																{ (o: O) -> P in
																	function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o)
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P) -> Q) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
										{ (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
											{ (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
												{ (k: K) -> (L) -> (M) -> (N) -> (O) -> (P) -> Q in
													{ (l: L) -> (M) -> (N) -> (O) -> (P) -> Q in
														{ (m: M) -> (N) -> (O) -> (P) -> Q in
															{ (n: N) -> (O) -> (P) -> Q in
																{ (o: O) -> (P) -> Q in
																	{ (p: P) -> Q in
																		function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p)
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}

	public static func curry<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_ function: @escaping (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R {
		return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
			{ (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
				{ (c: C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
					{ (d: D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
						{ (e: E) -> (F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
							{ (f: F) -> (G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
								{ (g: G) -> (H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
									{ (h: H) -> (I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
										{ (i: I) -> (J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
											{ (j: J) -> (K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
												{ (k: K) -> (L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
													{ (l: L) -> (M) -> (N) -> (O) -> (P) -> (Q) -> R in
														{ (m: M) -> (N) -> (O) -> (P) -> (Q) -> R in
															{ (n: N) -> (O) -> (P) -> (Q) -> R in
																{ (o: O) -> (P) -> (Q) -> R in
																	{ (p: P) -> (Q) -> R in
																		{ (q: Q) -> R in
																			function(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q)
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

public func § <A,B> (_ function: (A) throws -> B, _ value: A) rethrows -> B {
	return try F.apply(function, value)
}

@discardableResult
public func |> <A,B> (left: A, right: (A) throws -> B) rethrows -> B {
	return try right(left)
}

@discardableResult
public func <| <A,B> (left: (A) throws -> B, right: A) rethrows -> B {
	return try left(right)
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

public func |> <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) -> C) -> (A) -> C {
	return F.compose(first, second)
}

public func |> <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) -> C) -> (A) throws -> C {
	return F.compose(first, second)
}

public func |> <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return F.compose(first, second)
}

public func |> <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return F.compose(first, second)
}

precedencegroup LogicalImplicationPrecedence {
	associativity: left
	higherThan: TernaryPrecedence
	lowerThan: LogicalDisjunctionPrecedence
}

infix operator --> : LogicalConjunctionPrecedence

public func --> (_ left: Bool, _ right: Bool) -> Bool {
	return (left == false) || right
}
