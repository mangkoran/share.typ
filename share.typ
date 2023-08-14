// #let cvdata = yaml("example.yml")

// set rules
#let set_rules(doc) = {
  set page(
      paper: "a5", // a4, us-letter
      height: auto,
      // numbering: "1 / 1",
      number-align: center, // left, center, right
      margin: 1.00cm, // 1.25cm, 1.87cm, 2.5cm
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

// initialize document style
#let share_init(doc) = {
    doc = set_rules(doc)

    doc
}

#let share_header() = {
  block(
    width: 80%,
    align(left, text(24pt)[
      *#lorem(5)*
    ])
  )

  block(
    width: 80%,
    align(left, text(12pt)[
      Written by \@mangkoran
    ])
  )
}

#let share_content() = [
  #lorem(30)

  #for value in (1, 2, 3) [
    + #box(
        fill: luma(200),
        outset: (x: 1pt, y: 4pt),
        radius: 2pt, 
        [Foo.]
      ) #lorem(30)
  ]
]

#let share_footer() = {
  block(
    width: 100%,
    fill: luma(200),
    inset: 4pt,
    radius: 2pt,
    [Foo #h(1fr) #datetime.today().display()],
  )
}
