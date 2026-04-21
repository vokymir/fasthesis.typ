#import "init.typ": my_super_template

#show: my_super_template.with(
  font: "OpenDyslexic",
)

#set heading(numbering: "a.")

= ahoj lidi

TODO no toto

co to je?

*toto je tucne*

_toto je kurzivou_

#let ss = 18pt
#let pat = tiling(
  size: (ss, ss),
  relative: "parent",
)[
  #{
    let sq(dx, dy, fill) = place(
      dx: dx,
      dy: dy,
      rotate(
        45deg,
        origin: top + left,
        square(
          stroke: red,
          size: ss / 2,
          fill: fill,
        ),
      ),
    )
    let c1 = black
    let c2 = green

    sq(0pt, 0pt, c1)
    sq(ss, ss, c1)

    sq(0pt, ss / 2, c2)
    sq(ss / 2, 0pt, c2)
  }
]

#text(
  weight: "bold",
  size: 18pt,
  fill: gradient.linear(..color.map.rainbow),
  stroke: pat,
)[toto je zvlastni]


#rect(
  width: 100%,
  height: 18pt,
  fill: pat,
)
