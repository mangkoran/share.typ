// set rules
#let set_rules(doc) = {
  set page(
      paper: "a5", // a4, us-letter
      height: auto,
      // numbering: "1 / 1",
      number-align: center, // left, center, right
      margin: 1.00cm, // 1.25cm, 1.87cm, 2.5cm
      fill: rgb("b4befe").lighten(67%),
  )

  set text(
      // font: uservars.bodyfont,
      size: 12pt,
      hyphenate: false,
  )

  set par(
      leading: 6pt,
      justify: true,
  )

  doc
}

// show rules
#let show_rules(doc) = {
  // todo: raw text background
  // show raw: it => text(fill: rgb("eff1f5"))[#it.text]
  // show raw: it => box(fill: rgb("eff1f5"))[#it.text]

  doc
}

// initialize document style
#let share_init(doc) = {
    doc = set_rules(doc)
    doc = show_rules(doc)

    doc
}

#let share_header(data) = {
  block(
    width: 80%,
    align(left, text(24pt)[
      *#eval(data.title, mode: "markup")*
    ])
  )

  // block(
  //   width: 80%,
  //   align(left, text(12pt)[
  //     Written by #data.author
  //   ])
  // )
}

#let share_content(data) = [
  #eval(data.abstract, mode: "markup")

  #for item in data.items [
    + #box(
        fill: rgb("b4befe"),
        outset: (x: 1pt, y: 2pt),
        radius: 2pt, 
        [*#eval(item.title, mode: "markup").*]
      ) #eval(item.description, mode: "markup")
  ]
]

#let share_footer(data) = {
  block(
    width: 100%,
    // fill: luma(80%),
    inset: 4pt,
    radius: 2pt,
    [#data.author #h(1fr) #datetime.today().display()],
  )
}
