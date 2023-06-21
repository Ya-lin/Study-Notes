<TeXmacs|2.1.1>

<style|generic>

<\body>
  The following problem

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|min<rsub|x\<in\>\<bbb-R\><rsup|d>>f<around*|(|x|)>>>|<row|<cell|>|<cell|>|<cell|h<rsub|i><around*|(|x|)>=0>>|<row|<cell|>|<cell|>|<cell|g<rsub|i><around*|(|x|)>\<leq\>0>>>>
  </eqnarray*>

  is a convex optimization if <math|f<around*|(|x|)>,g<rsub|i><around*|(|x|)>>
  are convex and <math|h<rsub|i><around*|(|x|)>> are affine functions.

  \;

  Assume that <math|f<around*|(|x|)>> is a convex function. Let
  <math|A=<around*|{|x\|f<around*|(|x|)>\<leq\>0|}>> and
  <math|B=<around*|{|x\|f<around*|(|x|)>=0|}>>. Then <math|A> is convex but
  <math|B> may not be convex.

  For any <math|x,y\<in\>A> and <math|\<lambda\>\<in\><around*|[|0,1|]>>,

  <\eqnarray*>
    <tformat|<table|<row|<cell|f<around*|(|\<lambda\>x+<around*|(|1-\<lambda\>|)>y|)>>|<cell|\<leq\>>|<cell|\<lambda\>f<around*|(|x|)>+<around*|(|1-\<lambda\>|)>f<around*|(|y|)>>>|<row|<cell|>|<cell|\<leq\>>|<cell|\<lambda\>\<cdot\>0+<around*|(|1-\<lambda\>|)>\<cdot\>0>>|<row|<cell|>|<cell|\<leq\>>|<cell|0>>>>
  </eqnarray*>

  This implies <math|\<lambda\>x+<around*|(|1-\<lambda\>|)>y\<in\>A> so
  <math|A> is a convex set.

  Consider <math|f<around*|(|x|)>=x<rsup|2>-4x+3>. Then
  <math|B=<around*|{|1,3|}>> is obviously not a convex set.\ 

  \;

  KKT condition

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|\<nabla\>f<around*|(|x|)>+\<mu\>\<nabla\>g<around*|(|x|)>=0>>|<row|<cell|g<around*|(|x|)>\<leq\>0>>|<row|<cell|\<mu\>\<geq\>0>>|<row|<cell|\<mu\>g<around*|(|x|)>=0>>>>>|\<nobracket\>>
  </equation*>

  \;

  In general case, KKT condition is not solvable. Instead, it's easier to
  solve

  <\equation*>
    <around*|{|<tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<table|<row|<cell|\<nabla\>f<around*|(|x|)>+\<mu\>\<nabla\>g<around*|(|x|)>=0>>|<row|<cell|g<around*|(|x|)>\<leq\>0>>|<row|<cell|\<mu\>\<geq\>0>>|<row|<cell|\<mu\>g<around*|(|x|)>=-t>>|<row|<cell|t\<gtr\>0
    but small>>>>>|\<nobracket\>>
  </equation*>

  which is a relaxion of KKT condition.

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>