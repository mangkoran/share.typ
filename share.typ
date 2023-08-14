
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

#let share_header(data) = {
  block(
    width: 80%,
    align(left, text(24pt)[
      *#data.title*
    ])
  )

  block(
    width: 80%,
    align(left, text(12pt)[
      Written by #data.author
    ])
  )
}

#let share_content(data) = [
  #data.abstract

  #for item in data.items [
    + #box(
        fill: luma(200),
        outset: (x: 1pt, y: 2pt),
        radius: 2pt, 
        [*#item.title.*]
      ) #item.description
  ]
]

#let share_footer() = {
  block(
    width: 100%,
    fill: luma(200),
    inset: 4pt,
    radius: 2pt,
    [#h(1fr) #datetime.today().display("[day]/[month]/[year repr:last_two]")],
  )
}
