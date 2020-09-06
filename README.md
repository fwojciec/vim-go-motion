# vim-go-motion

All credits go to the creators of the [vim-go](https://github.com/fatih/vim-go)
plugin -- this plugin is just the fatih/motion wrapper extracted from the
vim-go plugin. See the LICENSE file for the full copyright/license information.

## Requirements

Make sure you have the [fatih/motion](https://github.com/fatih/motion) binary
installed and available in \$PATH.

## Available text objects

```
TEXT OBJECTS

af            "a function", select contents from a function definition to the
              closing bracket. This text-object also supports literal
              functions.

if            "inside a function", select contents of a function,
              excluding the function definition and the closing bracket. This
              text-object also supports literal functions.

ac            "a comment", select contents of the current comment block.

ic            "inner comment", select contents of the current comment block,
              excluding the start and end comment markers.

]]            [count] forward to next function declaration.

[[            [count] backward to previous function declaration.
```
