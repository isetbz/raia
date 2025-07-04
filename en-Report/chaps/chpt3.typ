/* --------------------------------- DO NOT EDIT -------------------------------- */
#import "../common/class.typ": *
#show: report.with(isAbstract: false)
#set page(header: none)
#figure(chap("Chapter 3 - " + chap3, numbering: "1."), kind: "chapter", supplement: "Chapter") <chp:chap3> // Chapter 3
#set page(header: h(1fr) + emph("Chapter 3 - " + chap3) + line(length: 100%))
#set heading(outlined: true, numbering: "1.") 
/* ------------------------------------------------------------------------------ */ 

== Introduction
#lorem(32)

== Section 1
#lorem(16)
=== Subsection 1.1
#lorem(64)
=== Subsection 1.2
#lorem(64)

== Section 2
#lorem(16)
=== Subsection 2.1
#lorem(64)
=== Subsection 2.2
#lorem(64)

/* --- FIGURE --- */
@fig:typst-logo shows the `Typst` logo.

#figure(
  image("images/typst.svg", width: 10%),
  caption: "Typst logo",
) <fig:typst-logo>

/* --- TABLE --- */
@tab:atable displays a table.

#figure(
  table(
    columns: (auto, auto, auto),
    [a], [b], [c], [$a$], [$b$], [$c$],
  ),
  caption: "A table",
) <tab:atable>

/* --- MATH --- */
@eq:sum shows the sum of the first $n$ natural numbers.

$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <eq:sum>

== Conclusion
#lorem(32)
