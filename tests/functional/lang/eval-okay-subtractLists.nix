[
  # Basic example from nixpkgs lib.subtractLists
  (builtins.subtractLists [ 3 2 ] [ 1 2 3 4 5 3 ])

  # Empty removal list: nothing to remove
  (builtins.subtractLists [ ] [ 1 2 3 ])

  # Empty source list: nothing to filter
  (builtins.subtractLists [ 1 2 ] [ ])

  # Both lists empty
  (builtins.subtractLists [ ] [ ])

  # Remove all elements
  (builtins.subtractLists [ 1 2 3 ] [ 1 2 3 ])

  # No elements match
  (builtins.subtractLists [ 4 5 6 ] [ 1 2 3 ])

  # Removing elements that appear multiple times
  (builtins.subtractLists [ 2 ] [ 1 2 2 3 2 4 ])

  # With strings
  (builtins.subtractLists [ "b" "d" ] [ "a" "b" "c" "d" "e" ])

  # With nested lists
  (builtins.subtractLists [ [ 1 2 ] ] [ [ 1 2 ] [ 3 4 ] [ 1 2 ] ])

  # With attribute sets
  (builtins.subtractLists [ { a = 1; } ] [ { a = 1; } { b = 2; } { a = 1; } ])

  # Mixed types in list (no matches)
  (builtins.subtractLists [ 1 "a" ] [ 2 "b" 3 ])

  # Removal list has duplicates (should still work)
  (builtins.subtractLists [ 2 2 2 ] [ 1 2 3 ])
]
