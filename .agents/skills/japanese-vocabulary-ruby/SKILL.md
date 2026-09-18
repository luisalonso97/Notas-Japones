---
name: japanese-vocabulary-ruby
description: Add or correct kanji and furigana in Japanese vocabulary entries in this repository's LuaLaTeX notes. Use for Vocabulario \item lines, especially selected lines from an editor; do not use for general translation or prose rewriting.
---

# Japanese vocabulary ruby

Use this skill to refine Japanese vocabulary entries while preserving the class
notes as the source of truth.

## Scope and confidence

- Work only on the supplied vocabulary entries unless the user asks for a wider
  edit.
- Use the Japanese reading, the Spanish gloss, and nearby lesson context to
  identify the intended word. Check a reliable lexical source when available.
- Do not infer a kanji spelling from a Spanish gloss alone. If the intended
  word, spelling, or reading remains ambiguous, leave it in kana and report the
  uncertainty instead of guessing.
- Preserve the existing Spanish gloss, punctuation, particles, okurigana, and
  grammatical endings. Do not add definitions or correct lesson content unless
  requested.

## TeX style

- Inspect the target file and nearby vocabulary entries before formatting.
- Put furigana on kanji with `\ruby{...}{...}` and keep non-kanji portions
  outside the command when that makes the reading clear. For example,
  `でむかえ` may become `\ruby{出|迎}{で|むか}え` when that is the intended word.
- Follow the surrounding file's use of `|` to align kanji and readings. Keep
  established formatting unchanged when only a single entry is requested.
- Preserve `\item` structure and compile the changed lesson with LuaLaTeX when
  editing a file and the toolchain is available.

## Editor-selection mode

When the user provides selected `\item` lines and asks for replacement text,
return only the replacement TeX lines: no Markdown or explanation. Leave an
ambiguous Japanese term unchanged in kana so the result is safe to insert into
the editor.

## Output

For normal file edits, name the affected file, say whether compilation passed,
and list entries left unchanged because they were ambiguous.
