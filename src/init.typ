

#let my_super_template(
  font: "WhichFontToUse",
  be_funny: false,
  body,
) = {
  if font == "WhichFontToUse" {
    text(fill: red)[*WARNING* (now only confusing message) you didn't specify
      any font. To use a default font, make sure 1. directory `fonts` exists,
      and the cli command is called with flag `--font-path fonts` and the font
      is named _OpenDyslexic_. ]
  }
  set text(font: font)

  show regex("TODO(.*)"): it => text(fill: red, weight: "bold")[#it]
  set heading(numbering: "1.")

  if be_funny {
    set text(fill: green)
    [yeeeey]
  }
  body
}
