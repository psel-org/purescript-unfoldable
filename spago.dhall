{ name = "unfoldable"
, dependencies =
      [ "foldable-traversable", "maybe", "partial", "prelude", "tuples" ]
    # [ "console", "assert", "effect" ]
, packages =
    https://raw.githubusercontent.com/psel-org/package-sets/main/src/el-0.14.5-20211116/packages.dhall
, backend = "psel"
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
