# Writing with Typst

A quick reference guide for writing documents using **Typst** — a modern, fast typesetting system.

> [!NOTE]
> **Typst** uses a concise markup language inspired by **Markdown** to provide a wide range of formatting options. It compiles to PDF and is designed as a modern alternative to **LaTeX**.

---

## Table of Contents

- [Text Formatting](#text-formatting)
- [Creating Lists](#creating-lists)
- [Code Snippets](#code-snippets)
- [Inserting Objects](#inserting-objects)
  - [Images](#images)
  - [Tables](#tables)
- [Math](#math)
- [References & Citations](#references--citations)

---

## Text Formatting <a name="text-formatting"></a>

| Effect | Syntax | Example |
|---|---|---|
| **Bold** | `*text*` | `*bold*` → **bold** |
| _Italic_ | `_text_` | `_italic_` → _italic_ |
| `Inline code` | `` `text` `` | `` `code` `` |
| Heading 1 | `= Title` | largest heading |
| Heading 2 | `== Subtitle` | second-level heading |
| Heading 3 | `=== Section` | third-level heading |

> [!TIP]
> Headings in **Typst** also automatically generate an outline entry when you use the `#outline()` function.

---

## Creating Lists <a name="creating-lists"></a>

**Unordered list** — use `-` followed by a space:

```typ
- First item
- Second item
  - Nested item
```

**Ordered list** — use `+` followed by a space:

```typ
+ First step
+ Second step
  + Sub-step
```

> [!NOTE]
> Nesting works for both list types by indenting with two spaces.

---

## Code Snippets

**Inline code** — enclose with single backticks:

```typ
Use the `#let` keyword to declare a variable.
```

**Code block** — use triple backticks followed by the language name for syntax highlighting:

````typ
```lang
Hello!
```
````

Supported language identifiers include `julia`, `python`, `rust`, `js`, `typ`, `bash`, `c`, `cpp`, and [many more](https://typst.app/docs/reference/text/raw/#parameters-lang).

---

## Inserting Objects

### Images

```typ
#figure(
  image("IMAGE_NAME.EXT", width: 80%),
  caption: [A descriptive caption for the image.],
) <fig:LABEL>

As seen in @fig:LABEL, the image is rendered beautifully.
```

> [!TIP]
> Adjust the `width` parameter (e.g., `50%`, `10cm`) to control how large the image appears on the page.

### Tables

```typ
#figure(
  table(
    columns: 4,
    table.header([*Header 1*], [*Header 2*], [*Header 3*], [*Header 4*]),
    [Row 1], [a], [b], [c],
    [Row 2], [1], [2], [3],
  ),
  caption: [A table of results.],
) <tab:LABEL>

@tab:LABEL displays the experimental results.
```

> [!NOTE]
> `table.header()` was introduced in `Typst 0.11`. For older versions, simply list cells without it. _(the first row will still render as the header visually if you apply bold manually.)_

---

## Math

Typst has built-in, **LaTeX**-inspired math support.

**Inline math** — surround with `$`:

```typ
The formula $E = m c^2$ is well known.
```

**Display (block) math** — add spaces inside the `$` delimiters:

```typ
$ sum_(k=1)^n k = (n(n+1)) / 2 $
```

---

## References & Citations

**Cross-references** — label any figure, heading, or equation with `<label>` and reference it with `@label`:

```typ
= Introduction <sec:intro>

As discussed in @sec:intro, ...
```

**Bibliography** — point Typst to a `.bib` file and cite inline:

```typ
#bibliography("references.bib")

This result was first published in @knuth1984.
```

---

## Resources

- 📖 [Official Documentation](https://typst.app/docs/)
- 🚀 [Typst Web App](https://typst.app/)
- 💬 [Community Discord](https://discord.gg/2uDybryKPe)
- 🐙 [GitHub Repository](https://github.com/typst/typst)
