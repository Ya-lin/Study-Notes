<TeXmacs|2.1.1>

<style|generic>

<\body>
  <doc-data|<doc-title|Note on simplifying the objective function>>

  Example <math|f<around*|(|x,y|)>=A sin x cos y+B cos x sin y+C cos<rsup|2
  >x+D sin<rsup|2>x>

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|x,y|)>>|<cell|=>|<cell|A\<cdot\><frac|sin<around*|(|x+y|)>+sin<around*|(|x-y|)>|2>+B\<cdot\><frac|sin<around*|(|x+y|)>-sin<around*|(|x-y|)>|2>>>|<row|<cell|>|<cell|>|<cell|+C\<cdot\><frac|1+cos<around*|(|2x|)>|2>+D\<cdot\><frac|1-cos<around*|(|2x|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2><around*|[|<around*|(|A+B|)>sin<around*|(|x+y|)>+<around*|(|A-B|)>sin<around*|(|x-y|)>|]>+<frac|1|2><around*|(|C-D|)>cos<around*|(|2x|)>+<frac|1|2><around*|(|C+D|)>>>|<row|<cell|>|<cell|>|<cell|Let
    K<rsub|1>=<sqrt|<around*|(|A+B|)><rsup|2>+<around*|(|A-B|)><rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>K<rsub|1><around*|[|sin<around*|(|x+y|)><frac|A+B|K<rsub|1>>+<frac|A-B|K<rsub|1>>sin<around*|(|x-y|)>|]>+<frac|1|2><around*|(|C-D|)>cos<around*|(|2x|)>+<frac|1|2><around*|(|C+D|)>>>|<row|<cell|>|<cell|>|<cell|Since
    angles x+y<infix-and>x-y are different,we cannot simplify the first
    term.>>>>
  </eqnarray*>

  \;

  Try

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsub|Y><around*|(|x|)>\|0\<rangle\>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>>|<cell|-sin<frac|x|2>>>|<row|<cell|sin<frac|x|2>>|<cell|cos<frac|x|2>>>>>><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>>>|<row|<cell|sin<frac|x|2>>>>>>>>>>
  </eqnarray*>

  and

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsub|Y><around*|(|y|)>\|0\<rangle\>>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|y|2>>|<cell|-sin<frac|y|2>>>|<row|<cell|sin<frac|y|2>>|<cell|cos<frac|y|2>>>>>><bmatrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|y|2>>>|<row|<cell|sin<frac|y|2>>>>>>>>>>
  </eqnarray*>

  Then we see

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsub|Y><around*|(|x|)>\<otimes\>R<rsub|Y><around*|(|y|)>\|00\<rangle\>>|<cell|=>|<cell|R<rsub|Y><around*|(|x|)>\|0\<rangle\>\<otimes\>R<rsub|Y><around*|(|y|)>\|0\<rangle\>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>>>|<row|<cell|sin<frac|x|2>>>>>>\<otimes\><bmatrix|<tformat|<table|<row|<cell|cos<frac|y|2>>>|<row|<cell|sin<frac|y|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>cos<frac|y|2>>>|<row|<cell|cos<frac|x|2>sin<frac|y|2>>>|<row|<cell|sin<frac|x|2>cos<frac|y|2>>>|<row|<cell|sin<frac|x|2>sin<frac|y|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|cos<frac|x|2>cos<frac|y|2>\|00\<rangle\>+cos<frac|x|2>sin<frac|y|2>\|01\<rangle\>+sin<frac|x|2>cos<frac|y|2>\|10\<rangle\>+sin<frac|x|2>sin<frac|y|2>\|11\<rangle\>>>|<row|<cell|>|<cell|=>|<cell|\|0\<rangle\><around*|(|cos<frac|x|2>cos<frac|y|2>\|0\<rangle\>+cos<frac|x|2>sin<frac|y|2>\|1\<rangle\>|)>+\|1\<rangle\><around*|(|sin<frac|x|2>cos<frac|y|2>\|0\<rangle\>+sin<frac|x|2>sin<frac|y|2>\|1\<rangle\>|)>>>>>
  </eqnarray*>

  Without other gates, use PauliZ to measure the first qubit

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|Z<around*|[|0|]>>>|<cell|=>|<cell|<around*|[|<around*|(|cos<frac|x|2>cos<frac|y|2>|)><rsup|2>+<around*|(|cos<frac|x|2>sin<frac|y|2>|)><rsup|2>|]>\<cdot\>1+<around*|[|<around*|(|sin<frac|x|2>cos<frac|y|2>|)><rsup|2>+<around*|(|sin<frac|x|2>sin<frac|y|2>|)><rsup|2>|]>\<cdot\><around*|(|-1|)>>>|<row|<cell|>|<cell|=>|<cell|cos<rsup|2><frac|x|2>-sin<rsup|2><frac|x|2>>>|<row|<cell|>|<cell|=>|<cell|cos
    x>>>>
  </eqnarray*>

  Let <math|U> be an unitary matrix. Then

  <\eqnarray*>
    <tformat|<table|<row|<cell|U R<rsub|Y><around*|(|x|)>\<otimes\>R<rsub|Y><around*|(|y|)>\|00\<rangle\>>|<cell|=>|<cell|U
    R<rsub|Y><around*|(|x|)>\|0\<rangle\>\<otimes\>R<rsub|Y><around*|(|y|)>\|0\<rangle\>>>|<row|<cell|>|<cell|=>|<cell|U<bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>>>|<row|<cell|sin<frac|x|2>>>>>>\<otimes\><bmatrix|<tformat|<table|<row|<cell|cos<frac|y|2>>>|<row|<cell|sin<frac|y|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|u<rsub|11>>|<cell|u<rsub|12>>|<cell|u<rsub|13>>|<cell|u<rsub|14>>>|<row|<cell|u<rsub|21>>|<cell|u<rsub|22>>|<cell|u<rsub|23>>|<cell|u<rsub|24>>>|<row|<cell|u<rsub|31>>|<cell|u<rsub|32>>|<cell|u<rsub|33>>|<cell|u<rsub|34>>>|<row|<cell|u<rsub|41>>|<cell|u<rsub|42>>|<cell|u<rsub|43>>|<cell|u<rsub|44>>>>>><bmatrix|<tformat|<table|<row|<cell|cos<frac|x|2>cos<frac|y|2>>>|<row|<cell|cos<frac|x|2>sin<frac|y|2>>>|<row|<cell|sin<frac|x|2>cos<frac|y|2>>>|<row|<cell|sin<frac|x|2>sin<frac|y|2>>>>>>>>|<row|<cell|>|<cell|=>|<cell|<bmatrix|<tformat|<table|<row|<cell|u<rsub|11>cos<frac|x|2>cos<frac|y|2>+u<rsub|12>cos<frac|x|2>sin<frac|y|2>+u<rsub|13>sin<frac|x|2>cos<frac|y|2>+u<rsub|14>sin<frac|x|2>sin<frac|y|2>>>|<row|<cell|u<rsub|21>cos<frac|x|2>cos<frac|y|2>+u<rsub|22>cos<frac|x|2>sin<frac|y|2>+u<rsub|23>sin<frac|x|2>cos<frac|y|2>+u<rsub|24>sin<frac|x|2>sin<frac|y|2>>>|<row|<cell|u<rsub|31>cos<frac|x|2>cos<frac|y|2>+u<rsub|32>cos<frac|x|2>sin<frac|y|2>+u<rsub|33>sin<frac|x|2>cos<frac|y|2>+u<rsub|34>sin<frac|x|2>sin<frac|y|2>>>|<row|<cell|u<rsub|41>cos<frac|x|2>cos<frac|y|2>+u<rsub|42>cos<frac|x|2>sin<frac|y|2>+u<rsub|43>sin<frac|x|2>cos<frac|y|2>+u<rsub|44>sin<frac|x|2>sin<frac|y|2>>>>>>>>>>
  </eqnarray*>

  and

  <\eqnarray*>
    <tformat|<table|<row|<cell|\<bbb-E\><rsub|Z<around*|[|0|]>>>|<cell|=>|<cell|<around*|[|<around*|(|u<rsub|11>cos<frac|x|2>cos<frac|y|2>+u<rsub|12>cos<frac|x|2>sin<frac|y|2>+u<rsub|13>sin<frac|x|2>cos<frac|y|2>+u<rsub|14>sin<frac|x|2>sin<frac|y|2>|)><rsup|2>|\<nobracket\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<nobracket\>|+<around*|(|u<rsub|21>cos<frac|x|2>cos<frac|y|2>+u<rsub|22>cos<frac|x|2>sin<frac|y|2>+u<rsub|23>sin<frac|x|2>cos<frac|y|2>+u<rsub|24>sin<frac|x|2>sin<frac|y|2>|)><rsup|2>|]>\<cdot\>>>|<row|<cell|>|<cell|>|<cell|+<around*|[|<around*|(|u<rsub|31>cos<frac|x|2>cos<frac|y|2>+u<rsub|32>cos<frac|x|2>sin<frac|y|2>+u<rsub|33>sin<frac|x|2>cos<frac|y|2>+u<rsub|34>sin<frac|x|2>sin<frac|y|2>|)><rsup|2>|\<nobracket\>>>>|<row|<cell|>|<cell|>|<cell|<around*|\<nobracket\>|+<around*|(|u<rsub|41>cos<frac|x|2>cos<frac|y|2>+u<rsub|42>cos<frac|x|2>sin<frac|y|2>+u<rsub|43>sin<frac|x|2>cos<frac|y|2>+u<rsub|44>sin<frac|x|2>sin<frac|y|2>|)><rsup|2>|]>\<cdot\><around*|(|-1|)>>>>>
  </eqnarray*>

  Expand the first term,

  <\eqnarray*>
    <tformat|<table|<row|<cell|T<rsub|1>>|<cell|=>|<cell|u<rsub|11><rsup|2>cos<rsup|2><frac|x|2>cos<rsup|2><frac|y|2>+u<rsup|2><rsub|12>cos<rsup|2><frac|x|2>sin<rsup|2><frac|y|2>+u<rsup|2><rsub|13>sin<rsup|2><frac|x|2>cos<rsup|2><frac|y|2>+u<rsup|2><rsub|14>sin<rsup|2><frac|x|2>sin<rsup|2><frac|y|2>>>|<row|<cell|>|<cell|>|<cell|+2u<rsub|11>u<rsub|12>cos<frac|x|2>cos<frac|y|2>cos<frac|x|2>sin<frac|y|2>+2u<rsub|11>u<rsub|13>cos<frac|x|2>cos<frac|y|2>sin<frac|x|2>cos<frac|y|2>>>|<row|<cell|>|<cell|>|<cell|+2u<rsub|11>u<rsub|14>cos<frac|x|2>cos<frac|y|2>sin<frac|x|2>sin<frac|y|2>+2u<rsub|12>u<rsub|13>cos<frac|x|2>sin<frac|y|2>sin<frac|x|2>cos<frac|y|2>>>|<row|<cell|>|<cell|>|<cell|+2u<rsub|12>u<rsub|14>cos<frac|x|2>sin<frac|y|2>sin<frac|x|2>sin<frac|y|2>+2u<rsub|13>u<rsub|14>sin<frac|x|2>cos<frac|y|2>sin<frac|x|2>sin<frac|y|2>>>|<row|<cell|>|<cell|=>|<cell|u<rsub|11><rsup|2><frac|1+cos
    x|2>\<cdot\><frac|1+cos y|2>+u<rsub|12><rsup|2><frac|1+cos
    x|2>\<cdot\><frac|1-cos y|2>+u<rsub|13><rsup|2><frac|1-cos
    x|2>\<cdot\><frac|1+cos y|2>>>|<row|<cell|>|<cell|>|<cell|+u<rsub|14><frac|1-cos
    x|2>\<cdot\><frac|1-cos y|2>+u<rsub|11>u<rsub|12
    >cos<rsup|2><frac|x|2>sin y+u<rsub|11>u<rsub|13>sin x
    cos<rsup|2><frac|y|2>>>|<row|<cell|>|<cell|>|<cell|+<frac|1|2>u<rsub|11>u<rsub|14>sin
    x sin y+<frac|1|2>u<rsub|12>u<rsub|13>sin x sin y+u<rsub|12>u<rsub|14>sin
    x sin<rsup|2><frac|y|2>+u<rsub|13>u<rsub|14>sin<rsup|2><frac|x|2> sin
    y>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>u<rsub|11><rsup|2>cos x cos
    y+<frac|1|2>u<rsub|11><rsup|2><around*|(|cos x+cos
    y|)>+<frac|1|4>u<rsub|11><rsup|2>+<frac|1|4>u<rsub|12><rsup|2>+<frac|1|2>u<rsub|12><rsup|2><around*|(|cos
    x-cos y|)>-<frac|1|4>u<rsub|12><rsup|2>cos x cos
    y>>|<row|<cell|>|<cell|>|<cell|+<frac|1|4>u<rsub|13><rsup|2>+<frac|1|2><around*|(|cos
    y-cos x|)>+<frac|1|4>u<rsub|14>cos x cos
    y+u<rsub|11>u<rsub|12><frac|1+cos x|2>sin y+u<rsub|11>u<rsub|13>sin
    x<frac|1-cos y|2>>>|<row|<cell|>|<cell|>|<cell|+<frac|1|2><around*|(|u<rsub|11>u<rsub|14>+u<rsub|12>u<rsub|13>|)>sin
    x sin y+u<rsub|12>u<rsub|14>sin x <frac|1-cos
    y|2>+u<rsub|13>u<rsub|14><frac|1-cos x|2>sin
    y>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4><around*|(|u<rsub|11><rsup|2>-u<rsub|12><rsup|2>+u<rsub|14>|)>cos
    x cos y+<frac|1|2><around*|(|u<rsub|11>u<rsub|14>+u<rsub|12>u<rsub|13>|)>sin
    x sin y-<frac|1|2><around*|(|u<rsub|11>u<rsub|13>+u<rsub|12>u<rsub|14>|)>sin
    x cos y>>|<row|<cell|>|<cell|>|<cell|+<frac|1|2><around*|(|u<rsub|11>u<rsub|12>-u<rsub|13>u<rsub|14>|)>cos
    x sin y+<frac|1|2><around*|(|u<rsub|11><rsup|2>+u<rsub|12><rsup|2>-1|)>cos
    x+<frac|1|2><around*|(|u<rsub|11><rsup|2>-u<rsub|12><rsup|2>+1|)>cos
    y>>|<row|<cell|>|<cell|>|<cell|+<frac|1|2><around*|(|u<rsub|11>u<rsub|13>+u<rsub|12>u<rsub|14>|)>sin
    x+<frac|1|2><around*|(|u<rsub|11>u<rsub|12>+u<rsub|13>u<rsub|14>|)>sin
    y+<frac|1|4><around*|(|u<rsub|11><rsup|2>+u<rsub|12><rsup|2>+u<rsub|13><rsup|2>|)>>>>>
  </eqnarray*>

  It seems <math|sin<rsup|2>x,sin<rsup|2>y> can not be generated.

  Remark.

  When using <math|2> qubits, embedding angle is <math|<frac|x|2>>.

  When using <math|4=2<rsup|2>> qubits, embedding angle should be
  <math|<frac|x|4>>?

  Consider the <math|4> qubit case,

  \;

  Can we consider the phase embedding?

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>