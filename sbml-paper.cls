%% Filename:     draft-sbml-paper.cls                   -*- mode: latex -*-
%% Description:  LaTeX style file for SBML Level 3 paper
%% Author(s):    Michael Hucka <mhucka@caltech.edu>
%% Organization: California Institute of Technology
%% Date created: 2015-11-25

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sbml-paper}

\ProcessOptions
\LoadClass[11pt]{article}

% Latex package dependencies.
% ......................................................................

\RequirePackage[pdftex,rgb,dvipsnames,svgnames,hyperref,table]{xcolor}
\RequirePackage[letterpaper,top=0.75in,total={6.5in,9.5in}]{geometry}
\RequirePackage[warn]{textcomp}
\RequirePackage{wasysym}
\RequirePackage{amssymb}
\RequirePackage{fourier}
\RequirePackage{microtype}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{xspace}
\RequirePackage[pagewise,mathlines,edtable,right]{lineno}
\RequirePackage[round,sort]{natbib}
\RequirePackage{xhfill}
\RequirePackage[inline]{enumitem}
\RequirePackage{varwidth}
\RequirePackage[T1]{fontenc}
\RequirePackage{titlesec}
\RequirePackage[font={small,it}]{caption}
\RequirePackage[pdftex]{graphicx}
\RequirePackage[pdftex,breaklinks=true,colorlinks=true,
bookmarks=false,pdfhighlight=/O,urlcolor=darkblue,
linkcolor=darkblue,citecolor=mediumgreen]{hyperref}
\RequirePackage{rotating}
\RequirePackage[noblocks]{authblk}
\RequirePackage{wrapfig}

% Color definitions.
% ......................................................................

\definecolor{extremelylightgray}{gray}{0.97}
\definecolor{veryverylightgray}{gray}{0.95}
\definecolor{verylightgray}{gray}{0.9}
\definecolor{lightgray}{gray}{0.8}
\definecolor{mediumgray}{gray}{0.5}
\definecolor{darkgray}{gray}{0.3}
\definecolor{rowgray}{rgb}{0.94,0.94,0.94}
\definecolor{almostblack}{gray}{0.23}
\definecolor{lightyellow}{rgb}{0.98,0.94,0.7}
\definecolor{verylightyellow}{rgb}{0.97,0.95,0.85}
\definecolor{darkblue}{rgb}{0,0.3,0.68}
\definecolor{mediumgreen}{rgb}{0.1,0.6,0.3}
\definecolor{darkred}{rgb}{0.6,0,0.1}
\definecolor{linenumbercolor}{gray}{0.75}
\definecolor{mediumpurple}{rgb}{0.54,0.17,0.89}
\definecolor{darkgreen}{rgb}{0,0.8,0.4}

% Style adjustments.
% ......................................................................

% Rename figure references per MSB style.

\renewcommand{\figurename}{Fig}
\renewcommand{\figureautorefname}{Fig~}
\renewcommand{\tablename}{Table}
\renewcommand{\tableautorefname}{Table~}


% Reduce spacing after section headings.

\titlespacing\section{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{8pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}


% Put a dot after section numbers.

\titlelabel{\thetitle.\quad}


% Make appendices start as "Appendix A." instead of "A."

\let\oldappendix\appendix
\renewcommand{\appendix}{%
  \oldappendix%
  \renewcommand{\thesection}{Appendix \Alph{section}}%
}

% Adjust paragraphs to be unindented, with a blank line between them.

\setlength{\parindent}{0pt}          % Unindented paragraphs, separated ...
\setlength{\parskip}{1.3ex}          % ... by roughly one blank line.
\setlength{\partopsep}{-1ex plus 0.1ex minus -0.2ex}
\setlength{\itemsep}{-0.25ex plus 0.15ex}


% 'booktabs' package adjustments:

\setlength{\cmidrulewidth}{0.3 pt}
\setlength{\lightrulewidth}{0.3 pt}
\setlength{\heavyrulewidth}{0.9 pt}


% Fix placement of figures & tables.  This keeps latex from shoving big
% floats to the end of a document when they are somewhat big, which it will
% do even if you put [htb] as the argument.

\setcounter{topnumber}{2}               % max num of floats at top of page
\setcounter{bottomnumber}{2}            % max num of floats at bottom of pg
\renewcommand\topfraction{1.0}          % fraction a top float can cover
\renewcommand\bottomfraction{1.0}       % fraction a bottom float can cover
\renewcommand\textfraction{0.0}         % >5% of a non-float pg must be text
\renewcommand\floatpagefraction{0.9}    % float page must be 95% full


% Spacing of floats.

\setlength{\intextsep}{1.5em plus 4pt minus 0pt}
\setlength{\textfloatsep}{1.5em plus 4pt minus 0pt}


% Make floats that appear alone on a page appear at the top, rather than
% (as is the LaTeX default) appearing centered vertically on the page.

\setlength{\@fptop}{5pt}


% 'lineno' package adjustments.
% The BeginAccSupp business causes the line numbers to be ignored for
% copy-paste operations in the PDF output, at least in Acrobat.

\setlength{\linenumbersep}{2.2em}
\renewcommand{\linenumberfont}{\tiny\sffamily}
\renewcommand{\thelinenumber}{%
  \textcolor{linenumbercolor}{\parbox[b][\height+1.5pt][c]{10pt}{\arabic{linenumber}}}%
}


% Table helpers.
% ......................................................................

\newcolumntype{P}[1]{>{\raggedright\hspace{0pt}\arraybackslash}p{#1}}


% Note-making commands.
% ......................................................................

\reversemarginpar  % Want these be put on the left, not the right.

\newcommand{\note}[1]{\mbox{}\marginpar{\hspace{0pt}%
    \fcolorbox{Gold}{lightyellow}{\scriptsize\begin{minipage}[t]{0.8in}%
        \raggedright\textit{#1}\end{minipage}}}}


% Miscellaneous random other commands.
% ......................................................................

\newcommand{\link}[2]{\textup{\ttfamily{\href{#1}{#2}}}}
\newcommand{\mailto}[1]{\link{mailto:#1}{#1}}
\newcommand{\eg}{e.g.,\xspace}
\newcommand{\ie}{i.e.,\xspace}
\newcommand{\No}{\textnumero$\,\,$}

% Epilogue.
% ......................................................................

\linenumbers
