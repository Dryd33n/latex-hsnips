# LaTeX HSnips

A collection of LaTeX snippets for VSCode using [HyperSnips for Math](https://github.com/OrangeX4/hsnips). Snippets are split across multiple categorized source files and compiled into a single output file via a shell script.

## Setup

1. Install the [HyperSnips for Math](https://github.com/OrangeX4/hsnips) VSCode extension.
2. Clone this repository.
3. In the extension settings, set the snippet directory to the `out/` folder inside this repo.
4. Run the build script (see below) to generate the compiled snippet file.

## Building

Requires bash (Git Bash, WSL, etc.). From the repo root:

```bash
./"build snips.sh"
```

This concatenates all files in `snips/` and generates snippets from `snips/keywords.hsnips` into `out/LaTex.hsnips`.

## Adding Snippets

### Category files

Place `.hsnips` files in the `snips/` directory. Each file is concatenated as-is into the output. The existing files are:

| File | Contents |
|---|---|
| `LaTex-Brackets.hsnips` | Absolute value, auto-sizing brackets |
| `LaTex-Calculus.hsnips` | Leibniz/partial derivatives, Laplace transforms |
| `LaTex-Document.hsnips` | Sections, lists, tables, article template |
| `LaTex-Linear Algebra.hsnips` | Vectors, matrices, subspaces, projections |
| `LaTex-LogicSets.hsnips` | Logical operators, quantifiers, set theory |
| `LaTex-NumberTheory.hsnips` | Floor, ceiling, GCD, LCM |
| `LaTex-Operations.hsnips` | Fractions, roots, sub/superscripts, environments |
| `LaTex-Symbols.hsnips` | Number sets (ℝ, ℤ, ℕ, …), Greek letters |
| `LaTex-Trig.hsnips` | Trig and inverse trig functions |

### Keyword shortcuts

Add entries to `snips/keywords.hsnips` — one keyword per line, `#` for comments. Each keyword becomes a snippet that expands to `\<keyword>` in math mode.

```
# Greek letters
alpha
beta
gamma

# Arrows
to
leftarrow
```

## Snippet Flags

HSnips flags used throughout this repo:

| Flag | Meaning |
|---|---|
| `i` | Expand mid-word (no word boundary required) |
| `A` | Auto-expand (no trigger key needed) |
| `m` | Only expand inside math mode |
