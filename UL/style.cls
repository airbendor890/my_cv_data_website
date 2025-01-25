%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% style class for LaTeX files               v0.9 March 18 2024   %%
%% made by Larissa Boie for the SwissFEL proposal template        %%
%% email: larissa.boie@psi.ch                                     %%
%%                                                                %%
%% based on work edited by Massimo Bellato and Giacomo Baruzzo    %%
%% email: massimo.bellato@unipd.it , giacomo.baruzzo@unipd.it     %%
%% original v1.1 from Francesco Masulli masulli@disi.unige.it     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style}[2023/03/20 SwissFEL and SLS proposal class]
\LoadClass[12pt,a4paper]{article}

\RequirePackage{calc}
\RequirePackage{indentfirst}

% select the font type for the document:
\usepackage{helvet} % this is Helvetica, which is close to Arial
    \renewcommand{\familydefault}{\sfdefault}

% generate dummy text in template
\usepackage{lipsum}

%% Title
\renewcommand{\@maketitle}{
 \thispagestyle{empty}
 \begin{flushleft}%
  {
   \fontsize{11}{11}\selectfont
   \@title
   \par
  }
 \end{flushleft}
}% End of \@maketitle

% if authors are added below the title (but not necessary for the proposal)
\def\author{\@ifnextchar[{\@getshortauthor}{\@getauthor}}
\def\@getauthor#1{\gdef\@author{#1}\gdef\@shortauthor{#1}}
\def\@getshortauthor[#1]#2{\gdef\@shortauthor{#1}\gdef\@author{#2}}

\newcommand{\address}[1]{\gdef\@address{#1}}

\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}

\newcommand{\heading}[1]{\gdef\@heading{#1}}

\def\sectionLevel{1}
\def\sectionIndent{0mm}
\def\sectionSpaceBefore{10pt}
\def\sectionSpaceAfter{5pt}
\def\sectionStyle{\large\bfseries}

\renewcommand{\section}{%
  \@startsection{section}{\sectionLevel}{\sectionIndent}{\sectionSpaceBefore}%
                {\sectionSpaceAfter}{\sectionStyle}}%
% \renewcommand{\thesection}{\Alph{section}} % set capital letters as section numbering

\def\sectionLevelsub{2}
\def\sectionIndentsub{0mm}
\def\sectionSpaceBeforesub{12pt}
\def\sectionSpaceAftersub{1pt}
\def\sectionStylesub{\bf\small}

\renewcommand{\subsection}{%
  \@startsection{subsection}{\sectionLevelsub}{\sectionIndentsub}{\sectionSpaceBeforesub}%
   {\sectionSpaceAftersub}{\sectionStylesub}}%


\renewcommand{\@makecaption}[2]{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\normalsize\fontsize{10}{12}\selectfont #1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \normalsize\fontsize{10}{12}\selectfont #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% correct frame that fits the proposal text into the DUO format
\setlength{\voffset}{0mm}
\setlength{\headheight}{25mm}
\setlength{\headsep}{0mm}
\setlength{\textheight}{267mm} %{197mm}
\setlength{\textwidth}{170mm} %{140mm}
\setlength{\textfloatsep}{12pt}
\setlength{\abovedisplayskip}{6pt}
\setlength{\belowdisplayskip}{6pt}
\setlength{\parindent}{0mm} % no indentation at beginning of each paragraph
\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{6pt}
\setlength{\itemsep}{0pt}



\usepackage[paperheight=29.7cm, paperwidth=21cm,nomarginpar,textwidth=19cm,headheight=2.5cm,top=1.5cm,bottom=1.5cm]{geometry}
\headsep=0pt %title starts on top of text frame


\AtBeginDocument{%
  % \pagestyle{empty}
  % \maketitle
  % \thispagestyle{empty} % no page number on first page
  \let\maketitle\relax
}


\endinput
