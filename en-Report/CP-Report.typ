// CAPSTONE PROJECT

#import "common/class.typ": *
#import "common/title-page.typ": *

#set document(author: author, title: title, keywords: enkeywords, date: auto)

// The project function is called with the content of the document.
#show: report.with(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  author: author,
  advisor: advisor,
  guest: guest,
  date: date,
  bibFile: "Biblio.bib",
  isAbstract: true,
)

#titlepage(
  title: title,
  titre: titre,
  diploma: diploma,
  program: program,
  author: author,
  advisor: advisor,
  president: president,
  reviewer: reviewer,
  guest: guest,
  date: date,
  docref: docref,
)

#pagebreak()
#place(bottom + right, box(width: 256pt, text(emph(dedication))))

#set page(header: none)
#chap("Acknowledgements", notAck: false)
#pagebreak()
#ack

/* ### Capstone Project Report ### */

// TOC
#set page(numbering: "i")
#counter(page).update(1)
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[Contents]
}
#outline(depth: 3, indent: auto)

// LOF
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[List of Figures]
}
#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)

// LOT
#pagebreak()
#{
  show heading: none
  heading(outlined: false, bookmarked: true)[List of Tables]
}
#outline(
  title: [List of Tables],
  target: figure.where(kind: table),
)

#set page(numbering: "1")
#counter(page).update(1)

// --- GI + Chaps + GC ---
#include "chaps/intro.typ"
#include "chaps/chpt1.typ"
#include "chaps/chpt2.typ"
#include "chaps/chpt3.typ"
#include "chaps/outro.typ"

// --- APPENDICES ---
/*
#set page(header: none)
#figure(chap("Appendix A: ***"), kind: "appendix", supplement: "appendix", numbering: "A.") <chp:appendix>
#set page(header: h(1fr) + emph("Appendix A: ***") + line(length: 100%))
#pagebreak()
*/

// --- END OF DOCUMENT ---
