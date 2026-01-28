#import "@preview/cetz:0.4.2": *
#import "@preview/lemmify:0.1.8": *

#let serif = ("Times New Roman", "Noto Serif CJK JP")

#set text(11pt, font: serif, lang: "la")

#let (
  definition,
  theorem, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group", lang: "la")

#show: thm-rules 

#align(center)[
	Universitas \*\*\*\*\*\
	Schola Graduatorum Scientiae Creativae\
	Cursus Scientiarum Mathematicarum in Disciplinā Fundamentālī

  #set text(weight: "black", size: 2em, font: serif)
  Theorema trium quadrātōrum
]
#align(center)[
	Numerus studiosi: 0123456789 \ Nomen candidati: Camellia \ Moderator dissertationis: Prof. \*\*\*\*\* \
	Datum \*\*\*\*\*, die XXX mēnsis Iūliī, annō Dominī MMXXV
]

#theorem[
	Sint longitūdinēs laterum triangulī $a,b,c$.
	Angulus inter $b$ et $c$ sit rēctus.
	Latus oppositum angulō rēctō sit $a$.
	Tum aequātiō
	$
	  a^2 = b^2 + c^2
	$
	valet.
]
#proof[
	Cōnsiderēmus figūram sēquentem.
	#align(center)[
		#canvas({
			import draw: *
			line((0,0),(0,2),stroke : red,name: "b")
			line((0,2),(0,5))

			line((0,0),(3,0),stroke : red,name: "c")
			line((3,0),(5,0))

			line((5,5),(5,0))
			line((0,5),(5,5))

			line((0,2),(2,5))
			line((2,5),(5,3))
			line((3,0),(5,3))
			line((3,0),(0,2),stroke : red,name: "a")

			content(
				("a.start", 50%, "a.end"),
				angle: "a.start",
				padding: .1,
				anchor: "south",
				$a$
			)
			content(
				("b.start", 45%, "b.end"),
				angle: "b.end",
				padding: .1,
				anchor: "south",
				$b$
			)
			content(
				("c.start", 45%, "c.end"),
				angle: "c.start",
				padding: .1,
				anchor: "south",
				$c$
			)

			line((0,0.4),(0.4,0.4),stroke : red)
			line((0.4,0.4),(0.4,0),stroke : red)
		})
	]
	Cuiusque triangulī area est $1/2 b c$.
	Quadrātī mediī area est $a^2$.
	Et quadrātī externī area est $(b+c)^2$.
	Hinc sequitur.
	$
	   (b+c)^2 =& 4(1/2 b c) + a^2\
	   b^2 + 2 b c + c^2 =& 2 b c + a^2\
	   a^2 =& b^2 + c^2
	$
	Quod erat demonstrandum.
]