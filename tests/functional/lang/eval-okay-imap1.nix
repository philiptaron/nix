# Test builtins.imap1 - maps over a list with 1-based indexing
{
  # Basic string concatenation with index
  strings = builtins.imap1 (i: v: "${v}-${toString i}") [ "a" "b" ];

  # Integer addition with index
  integers = builtins.imap1 (i: v: i + v) [ 10 20 30 ];

  # Empty list
  empty = builtins.imap1 (i: v: i) [];

  # Returns attrsets with index and value
  attrsets = builtins.imap1 (i: v: { inherit i v; }) [ "x" "y" "z" ];
}
