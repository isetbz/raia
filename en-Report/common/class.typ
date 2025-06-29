// DOCUMENT CLASS
#import "@preview/colorful-boxes:1.2.0": outlinebox
#import "@preview/glossy:0.8.0": *
#import "../Metadata.typ": *

// --- Titles of Chapters ---
#let chap(myRef, notAck: true, numbering: none) = {
  v(8cm)
  place(
    center,
    rect(
      // width: 15cm,
      // height: 6cm,
      radius: (rest: 5pt),
      inset: 25pt,
      outset: 25pt,
    )[
      // #v(2.5cm)
      #text(1.5em, hyphenate: false, smallcaps(heading(outlined: notAck, numbering: numbering, myRef)))
    ],
  )
}

#let report(
  title: "",
  titre: "",
  diploma: "",
  program: "",
  author: "",
  advisor: "",
  president: "",
  reviewer: "",
  guest: "",
  date: none,
  docref: none,
  bibFile: none,
  isAbstract: false,
  body,
) = {
  // --- Set the document's geometric properties. ---
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    number-align: center,
  )

  // --- Body font family ---
  set text(
    font: ("Cambria", "DejaVu Sans"),
    fallback: false,
    size: 12pt,
    lang: "en",
  )

  set enum(numbering: "1.a)")
  set list(marker: ([•], [--]))

  // --- Headings ---
  show heading: set block(below: 0.85em, above: 1.75em)

  show heading: it => {
    if (it.level <= 3) and (it.level > 1) {
      block(counter(heading).display() + " " + it.body)
    } else {
      block(it.body)
    }
  }

  // --- Paragraphs ---
  set par(spacing: 1.5em, leading: 1em, justify: true)

  // --- Figures ---
  show figure: set text(size: 12pt)
  set figure(numbering: "1")
  show figure: set figure.caption(separator: [: ])
  show figure.where(kind: image): set figure(supplement: "Fig.")
  show figure.where(kind: table): set figure(supplement: "Tab.")
  show figure.where(kind: table): set figure.caption(position: top)

  // --- Maths ---
  show math.equation: set text(font: "Cambria Math", size: 12pt)
  show math.equation: set text(weight: 400)
  set math.equation(numbering: "(1)")

  show ref: it => {
    let el = it.element
    if el != none and el.func() == math.equation {
      link(
        el.location(),
        numbering(
          "Eq. (1)",
          counter(math.equation).at(el.location()).at(0),
        ),
      )
    } else {
      it
    }
  }

  // --- Body ---
  body

  // --- Bibliography ---
  if bibFile != none {
    set page(numbering: "1")
    figure(chap("Bibliography"), kind: "chapter", supplement: "Chapter") // Bibliography
    set page(header: h(1fr) + emph("Bibliography") + line(length: 100%))
    bibliography("../" + bibFile, title: none, full: true, style: "ieee")
  }

  // --- Abstract | Résumé ---
  if isAbstract == true {
    set page(header: none, numbering: none)
    outlinebox(
      title: "ملخص",
      color: none,
      width: auto,
      radius: 2pt,
      centering: false,
    )[
      #set text(lang: "ar")
      #arabstract
      #line(length: 100%)
      * كلمات مفاتيح --* #arkeywords
    ]
    outlinebox(
      title: "Abstract",
      color: none,
      width: auto,
      radius: 2pt,
      centering: false,
    )[
      #enabstract
      #line(length: 100%)
      _*Keywords --*_ #enkeywords
    ]
    outlinebox(
      title: "Résumé",
      color: none,
      width: auto,
      radius: 2pt,
      centering: false,
    )[
      #frabstract
      #line(length: 100%)
      _*Mots clés --*_ #frkeywords
    ]
  }
}
