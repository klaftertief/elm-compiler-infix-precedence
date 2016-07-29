Example for <https://github.com/elm-lang/elm-compiler/issues/1096>

Steps to reproduce

- Clone this repo
- `elm-make Decoder.elm --output fresh.html`
- `touch Decoder.elm`
- `elm-make Decoder.elm --output cache.html`

Open both html files in your browser. `fresh.html` logs a successful decoing result, `cache.html` logs a decoding error.

To circumvent this bug one should add parentheses to make the precedence explicit.
