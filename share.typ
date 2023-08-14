// #let cvdata = yaml("example.yml")

#set page(
    paper: "a5", // a4, us-letter
    height: auto,
    // numbering: "1 / 1",
    number-align: center, // left, center, right
    margin: 1.00cm, // 1.25cm, 1.87cm, 2.5cm
)

// Set Text settings
#set text(
    // font: uservars.bodyfont,
    size: 12pt,
    hyphenate: false,
)

// Set Paragraph settings
#set par(
    leading: 6pt,
    justify: true,
)

#block(
  width: 80%,
  align(left, text(24pt)[
    *#lorem(5)*
  ])
)
#block(
  width: 80%,
  align(left, text(12pt)[
    Written by \@mangkoran
  ])
)

#lorem(30)

+ #box(fill: luma(200), outset: (y: 2pt), [Foo.]) #lorem(30)
+ #box(fill: luma(200), outset: (y: 2pt), [Bar.]) #lorem(30)
+ #box(fill: luma(200), outset: (y: 2pt), [Baz.]) #lorem(30)

#block(
  width: 100%,
  fill: luma(200),
  inset: 4pt,
  radius: 2pt,
  [Foo #h(1fr) #datetime.today().display()],
)
