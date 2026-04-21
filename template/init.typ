

#let my_super_template(body) = {
  set text(font: "OpenDyslexic")

  show regex("TODO(.*)"): it => text(fill: red, weight: "bold")[#it]
  set heading(numbering: "1.")

  body
}
