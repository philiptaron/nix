with builtins;

[
  # Regular function
  (isFunctionOrFunctor (x: x))

  # Integer (not a function)
  (isFunctionOrFunctor 42)

  # Simple functor (attrset with __functor that returns a function)
  (isFunctionOrFunctor { __functor = self: x: x; })

  # Plain attrset (no __functor)
  (isFunctionOrFunctor { a = 1; })

  # Nested functor (functor returning a functor returning a function)
  (isFunctionOrFunctor { __functor = self: { __functor = self2: x: x; }; })

  # Functor returning non-function
  (isFunctionOrFunctor { __functor = self: 42; })

  # String (not a function)
  (isFunctionOrFunctor "hello")

  # List (not a function)
  (isFunctionOrFunctor [ 1 2 3 ])

  # Null (not a function)
  (isFunctionOrFunctor null)

  # Boolean (not a function)
  (isFunctionOrFunctor true)

  # Multi-arg function
  (isFunctionOrFunctor (x: y: x + y))

  # Builtin function (primop)
  (isFunctionOrFunctor builtins.add)

  # Partially applied primop
  (isFunctionOrFunctor (builtins.add 1))
]
