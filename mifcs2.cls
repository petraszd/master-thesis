\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mifcs2}[2010/03/12]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[12pt,oneside,a4paper]{article}
\RequirePackage{multicol}
\RequirePackage{aliascnt}

% Margins
\setlength\topmargin{-2.54cm} % prevents latex 1in policy
\setlength\headheight{1.5cm}
\setlength\headsep{0.5cm}
\setlength\textheight{25.7cm}
\setlength\textwidth{16.5cm}
\setlength\oddsidemargin{0.46cm} % 0.16cm + 1in = 3cm
\setlength\evensidemargin{0.46cm}
\setlength\parindent{0.57cm}
\setlength\parskip{0.57cm}

\renewcommand{\@listI}{%
  \leftmargin=1.5cm
  \rightmargin=1.5cm
  \topsep=0cm
  \partopsep=0cm
  \parsep=6pt
  \itemsep=0pt
}

% Paragraphs
\usepackage{indentfirst}

% Headers, Footers
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0.0cm}
\rhead{\footnotesize{\thepage}}
\rfoot{\footnotesize{\thepage}}
\cfoot{}

\def\institute{VILNIAUS UNIVERSITETAS\\
MATEMATIKOS IR INFORMATIKOS FAKULTETAS\\
KOMPIUTERIJOS KATEDRA}

\def\mentor{Vardenis Pavardenis}
\def\doctype{Baigiamasis magistro darbas}
\def\studentstatus{X kurso, X grupės studentas}
\def\signature{para\v{s}as}

% Title page
\renewcommand{\@maketitle}{
  \thispagestyle{empty}
  \begin{center}

  \institute \par
  \vskip 6.5cm
  \doctype \par

  {\LARGE \bf{\@title} \par}
  \vskip 5.5cm

  \end{center}

  \hspace{9cm}
  \vbox{
    \begin{tabbing}

    Atliko: \studentstatus \\
    \@author \hspace{2cm}\= {\tiny (\signature)}\\\\
    Darbo vadovas:\\
    \mentor \> {\tiny (\signature)}

    \end{tabbing}
  }

  \vskip 3cm

  \begin{center}

  \@date

  \end{center}

  \clearpage
}

% Table of Content
\renewcommand{\contentsname}{Turinys}
\setcounter{tocdepth}{2}

\usepackage{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% Lists
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{--}
\renewcommand{\labelitemiii}{--}

% Figure
\usepackage[font=small,labelfont=bf,skip=3pt]{caption}

% Sections
\usepackage{titlesec}
\titlespacing*{\subsection}{0cm}{0cm}{-0.15cm}
\newcommand{\sectionbreak}{\clearpage}

\titleformat{\subsubsection}[hang]{\normalsize\bfseries}{}{0pt}{}
\titlespacing*{\subsubsection}{0cm}{0cm}{-0.25cm}

