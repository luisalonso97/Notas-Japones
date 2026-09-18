---
name: japanese-class-notes
description: Create or update Japanese class lesson notes in this repository's LuaLaTeX format from raw classroom notes. Use for transcribing, organizing, correcting, or extending lv*/ lesson files; do not use for unrelated Japanese-language questions.
---

# Japanese class notes

Use this skill for work on the class notes stored in this repository.

## Preserve the source

- Treat the user's raw notes, photos, recordings, and corrections as the source of truth.
- Do not invent vocabulary, readings, grammar explanations, page numbers, or exercise answers that were not supplied or explicitly requested.
- Keep uncertain transcription or interpretation visible and ask only when it prevents a faithful edit. Do not silently “correct” Japanese that may be a classroom-specific example.

## Repository conventions

- Lessons live in `lvN/` as `lvN_leccion_NN.tex`; keep the existing filename pattern and use the appropriate level already requested by the user.
- Start from a nearby lesson file at the same level so the current copyright header, document class, packages, title, author, and page setup remain consistent.
- Keep headings in Spanish and Japanese content in its original script. Use the established `Vocabulario` itemize list and `Ejercicios` enumerate list when they suit the material; add other sections only when the lesson calls for them.
- Use the shared `setup` package. Do not duplicate template code into lesson files.

## Editing workflow

1. Inspect the target lesson and one nearby completed lesson before editing.
2. Integrate the supplied material with minimal formatting changes. Preserve existing notes unless the user asks to revise or remove them.
3. For a new lesson, copy the structure and metadata of a nearby file, then update the level and lesson number.
4. When TeX was changed, compile from the lesson's directory with `latexmk -lualatex <file>.tex` when the toolchain is available. Report compile errors clearly; do not hide them by deleting content.

## Output

State which lesson file changed, whether it compiled, and call out any intentionally unresolved transcription.
