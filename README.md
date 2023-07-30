# groff-utils

My groff files, memos, and scripts.

## Memos

### Special characters
To properly display special characters such as ą, ę, ł etc., one needs to add `-Kutf8` argument.

### Pictures
Pictures can be inserted using `.PSPIC` or `.PDFPIC` macros.
`.PSPIC` shall be used in case of compiling to PostScript format and `.PDFPIC` shall be used in case of compiling to PDF format.
`.PDFPIC` additinaly requires unsafe mode `-U` argument.
