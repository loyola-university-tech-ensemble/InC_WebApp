\version "2.19.80"


phrase = \relative c' {

  \mark "20." 
  e16 fis e fis g,8.[ e'16] fis[ e fis e]

}

\score {
  \defineBarLine ":" #'("" ":" "")
  \new Staff = "phrase" {
    \bar ":"
    \phrase
    \set Score.repeatCommands = #'(end-repeat)
  }
  \layout {
    \context { \Staff
      \override Clef #'stencil = ##f
      \remove Time_signature_engraver
      \override BarLine.hair-thickness = #-1
      \override BarLine.thick-thickness = #-1
    }
  }
}
\header { tagline = "" }
\paper {
  top-margin = 1
  bottom-margin = 1
  left-margin = 1
  right-margin = 1
  indent = 0
}

