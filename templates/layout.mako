<!DOCTYPE html>
<%

menu = [
    ("index.html"                , "The Programme"                   , [
        ("mathematics.html"          , "Mathematics"                     ),
        ("financial_mathematics.html", "Financial Mathematics"           ),
        ("computer_science.html"     , "Computer Science and Mathematics"),
    ]),
    ("professors.html"           , "Meet the Professors!"            ),
    ("costs.html"                , "Costs"                           ),
    ("erasmus.html"              , "Erasmus Programme"               ),
    ("ljubljana.html"            , "Life in Ljubljana"               ),
    ("apply.html"                , "How to Apply"                    ),
]

%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Master's Programme in Mathematics at the University of Ljubljana<%block name="title" /></title>
  <link rel="stylesheet" href="css/style.css">
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,600&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  <link rel="icon" type="image/icon" href="img/favicon.ico">
  <%block name="javascript"/>
</head>
<body>
<div id="container">
  <div id="content-wrapper">
    <header>
    </header>
    <nav>
     <ul><!--
% for item in menu:
%    if item[0] == self.template.uri:
<%      clicked = " class='clicked'" %>
%    else:
<%      clicked = "" %>
%    endif
%    if len(item) == 2:
     --><li${clicked}><a href="${item[0]}">${item[1]}</a></li><!--
%    elif len(item) == 3:
     --><li${clicked}><a href="${item[0]}">${item[1]}</a><!--
       --><ul><!--
%       for subitem in item[2]:
       --><li><a href="${subitem[0]}">${subitem[1]}</a></li><br /><!--
%       endfor
       --></ul><!--
     --></li><!--
%    endif
% endfor
   --></ul>
    </nav>

    <main>
    ${self.body()}
    </main>
  </div>

  <footer>
    <table>
      <tr>
        <td class="logo">
          <a href="http://www.fmf.uni-lj.si"
         target="_blank"><img src="img/logo.gif" width="230px" alt="Logo FMF"/></a>
        </td>
        <td>
          <ul>
            <li><a href="index.html">The Programme</a></li>
            <li><a href="professors.html">Meet the Professors!</a></li>
            <li><a href="costs.html">Costs</a></li>
          </ul>
        </td>
        <td>
          <ul>
            <li><a href="erasmus.html">Erasmus Programme</a></li>
            <li><a href="ljubljana.html">Life in Ljubljana</a></li>
            <li><a href="apply.html">How to Apply</a></li>
          </ul>
        </td>
        <td class="copyright">
          Fakulteta za matematiko in fiziko, <br />
          Jadranska ulica 19, 1000 Ljubljana <br />
          (01) 476 6500 / <a href="mailto:fmf@fmf.uni-lj.si">fmf@fmf.uni-lj.si</a> <br />
          Design and code: Ines Meršak <br />
          Pictures are property of Peter Legiša.
        </td>
      </tr>
    </table>
  </footer>
</div>
</body>
</html>
