# Typst Report Templates

Bilingual report templates for master's students at [ISET Bizerte](https://github.com/isetbz), available in **English** (`en-report/`) and **French** (`fr-rapport/`), and written using **Typst**.

![Typst](typst.svg)

---

## Repository Structure

```
raia/
├── en-report/        # English report template
│   └── CP-Report.typ
├── fr-rapport/       # French report template (rapport)
│   └── Rapport-PFE.typ
└── README.md
```

---

## Install Typst

Download the latest binary directly from the [releases page](https://github.com/typst/typst/releases) and place it somewhere on your `$PATH`.

Verify the installation:

```bash
typst --version
```

---

## Compile a Document

To produce a PDF once from a `.typ` file:

```bash
# English template
typst compile en-report/CP-Report.typ

# French template
typst compile fr-rapport/Rapport-PFE.typ
```

The PDF is written next to the source file by default. You can specify a custom output path:

```bash
typst compile en-report/CP-Report.typ output/my-report.pdf
```

---

## Watch Mode (Live Preview)

`typst watch` recompiles the PDF automatically every time you save the file. Open the PDF in any viewer that supports live reload (e.g. **Sumatra PDF** on Windows, **Skim** on macOS, or **Evince** on Linux) and you get an instant preview loop while you edit.

```bash
# English template
typst watch en-report/CP-Report.typ

# French template
typst watch fr-rapport/Rapport-PFE.typ
```

> [!TIP]
> Keep the terminal with `typst watch` running in the background, open the PDF alongside your editor, and just hit **Save** to refresh the output. No manual recompilation needed.

Stop the watcher at any time with `Ctrl+C`.

---

## Editor Integration

### Zed

Typst support is built into Zed via the **Typst** extension. Install it from the extensions panel:

1. Open the command palette (`Cmd+Shift+P` / `Ctrl+Shift+P`).
2. Run `zed: extensions` and search for **Typst**.
3. Click **Install**.

Zed will provide syntax highlighting and LSP-powered features (autocompletion, go-to-definition, inline errors) automatically once the extension is active.

> [!TIP]
> Pair Zed with `typst watch` running in the integrated terminal for a lightweight, distraction-free editing setup.

### VS Code

Install the **Tinymist Typst** extension — it provides syntax highlighting, autocompletion, real-time error reporting, and a built-in PDF preview panel so you do not need a separate viewer.

```
ext install myriad-dreamin.tinymist
```

Or search for **Tinymist Typst** in the Extensions panel (`Ctrl+Shift+X`).

Once installed, open any `.typ` file and click the **preview** icon (▶) in the top-right corner of the editor to open the live preview pane.

### Other editors

Any editor with LSP support (Neovim, Emacs, Helix…) can use [Tinymist](https://github.com/Myriad-Dreamin/tinymist) as a language server. Refer to Tinymist's documentation for configuration instructions.

---

## Workflow Summary

```
┌─────────────────────────────────────────────────────────────────┐
│  Terminal                             │  Editor (VS Code / Zed) │
│                                       │                         │
│  $ typst watch                        │  Edit  chpt1.typ        │
│    fr-rapport/Rapport-PFE.typ         │  Save  (Ctrl+S)         │
│                                       │                         │
│  ✔ compiled in 120ms                  │  PDF refreshes          │
└─────────────────────────────────────────────────────────────────┘
```

+ Open a terminal in the project root.
+ Run `typst watch <folder>/main.typ`.
+ Open `chapt1.typ` in your preferred editor.
+ Edit and save, the PDF updates instantly.

---

## Resources

- 📖 [Typst Documentation](https://typst.app/docs/)
- 🌐 [Typst Web App](https://typst.app/) *(no installation required)*
- 🔌 [Tinymist Extension](https://github.com/Myriad-Dreamin/tinymist)
- 💬 [Typst Community Discord](https://discord.gg/2uDybryKPe)

---

## License

MIT — see [LICENSE](./LICENSE) for details.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&skip_quickstart=true&machine=standardLinux32gb&repo=882318804&devcontainer_path=.devcontainer%2Fdevcontainer.json&geo=EuropeWest)
