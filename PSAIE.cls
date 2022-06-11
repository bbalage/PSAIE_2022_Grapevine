%% Default settings of manuscripts written for
%% Production Systems and Information Engineering
%% a publication of the University of Miskolc
%%
%%**** please use and do not modify the following commands ********
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{PSAIE}

\LoadClass[twoside,11pt,reqno,a4paper]{amsart}
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{chapterbib}

\usepackage{bold-extra}

\theoremstyle{plain}
\newtheorem{acknowledgement}{Acknowledgement}
\newtheorem{algorithm}{Algorithm}
\newtheorem{axiom}{Axiom}
\newtheorem{case}{Case}
\newtheorem{claim}{Claim}
\newtheorem{conclusion}{Conclusion}
\newtheorem{condition}{Condition}
\newtheorem{conjecture}{Conjecture}
\newtheorem{corollary}{Corollary}
\newtheorem{criterion}{Criterion}
\newtheorem{definition}{Definition}
\newtheorem{example}{Example}
\newtheorem{exercise}{Exercise}
\newtheorem{lemma}{Lemma}
\newtheorem{notation}{Notation}
\newtheorem{problem}{Problem}
\newtheorem{program}{Program}
\newtheorem{proposition}{Proposition}
\newtheorem{remark}{Remark}
\newtheorem{solution}{Solution}
\newtheorem{summary}{Summary}
\newtheorem{theorem}{Theorem}

% to get equations numbered automatically according to
% section number as (1.1), (1.2), etc
\numberwithin{equation}{section}

\newcommand{\thmref}[1]{Theorem~\ref{#1}}
\newcommand{\secref}[1]{\S\ref{#1}}
\newcommand{\lemref}[1]{Lemma~\ref{#1}}

\renewcommand{\labelenumi}{\arabic{enumi}.}


% -----------------------------------------
\setlength{\textwidth} {130 true mm}%
\setlength{\textheight}{190 true mm}%
%------------------------------------------
%\setlength{\oddsidemargin} {-5.4 true mm}%
%\setlength{\evensidemargin}{-5.4 true mm}%
%------------------------------------------
%\setlength{\topmargin} {-10.4 true mm}%
\setlength{\footskip}{0 true mm}%
\setlength{\headheight}{8 mm}  %
\setlength{\headsep}{12 pt}%
\setlength{\topskip}{0 true mm}%
%------------------------------------------
%\setlength{\parindent}{4 true mm}%
\setlength{\parskip}{1.5 true mm}%
%------------------------------------------
\newlength{\PUMlen}\setlength{\PUMlen}{-1mm}%
\newcounter{First}%
\setcounter{First}{1}%

%%----------------------------------------

\newcommand{\PSAIEHeadFirst}[4]
{ \thispagestyle{empty}
  \noindent \setlength{\headheight}{0 mm}
    \begin{minipage}{\textwidth}
        \begin{minipage}{11mm}\includegraphics[width=11mm]{cimer-ff.eps}\end{minipage}
        \begin{minipage}{89mm}
            \noindent\footnotesize
            {\textit{Production Systems and Information Engineering}\\Volume #1 (#2), pp.\ #3--#4}
       \end{minipage}
       \begin{minipage}{28mm}\raggedleft\footnotesize{#3}\end{minipage}
    \end{minipage}
  \setlength{\headheight}{8 mm}
  \pagestyle{fancy}
  \fancyhead{}
  \fancyhead[LE,RO]{\footnotesize \thepage}
}

\newcommand{\PSAIEinclude}[5]{
  \newpage \thispagestyle{empty}
  \noindent \setlength{\headheight}{0 mm}
    \begin{minipage}{\textwidth}
        \begin{minipage}{11mm}\includegraphics[width=11mm]{cimer-ff.eps}\end{minipage}
        \begin{minipage}{89mm}
            \noindent\footnotesize
            {\textit{Production Systems and Information Engineering}\\Volume #2 (#3), pp.\ #4--#5}
       \end{minipage}
       \begin{minipage}{28mm}\raggedleft\footnotesize{#4}\end{minipage}
    \end{minipage}
  \setlength{\headheight}{8 mm}
  \pagestyle{fancy}
  \fancyhead{}
  \fancyhead[LE,RO]{\footnotesize \thepage}
  \input{#1}
}

\newcommand{\PSAIEheader}[1]{\footnotesize\scshape{#1}}%

%---------------------
\makeatletter
%---------------------

\def\section{\@startsection{section}{1}%
  \z@{.7\linespacing\@plus\linespacing}{.5\linespacing}%
  {\normalfont\bfseries\centering}}
\def\subsection{\@startsection{subsection}{2}%
  \z@{.5\linespacing\@plus.7\linespacing}{.5em}%
  {\normalfont\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}%
  \z@{.5\linespacing\@plus.7\linespacing}{.5em}%
  {\normalfont\itshape}}
\def\paragraph{\@startsection{paragraph}{4}%
  \z@\z@{-\fontdimen2\font}%
  \bfseries}

\def\@seccntformat#1{%
  \protect{
    \csname the#1\endcsname
    \protect\@secnumpunct
  }%
}

%---------------------
\def\@captionfont{\normalfont\small}
\def\@captionheadfont{\bfseries}
%\def\@captionheadfont{\mdseries}

%---------------------
\def\refname{REFERENCES}
%---------------------
\renewenvironment{thebibliography}[1]{%
  \@xp\section\@xp*\@xp{\refname}%
  \normalfont\small\labelsep .5em\relax
  \renewcommand\theenumiv{\arabic{enumiv}}\let\p@enumiv\@empty
  \list{\@biblabel{\hspace{0.2mm}{\theenumiv}\hspace{0.2mm}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth \advance\leftmargin\labelsep
    \setlength{\itemsep}{3pt}
    \usecounter{enumiv}}%
  \sloppy \clubpenalty\@M \widowpenalty\clubpenalty
  \sfcode`\.=\@m
}%
\makeatother

\newcommand{\PSAIEtitle}[1] {\begin{minipage}[t]{\textwidth}
\vspace*{7 true mm}
\begin{center}
\uppercase{\large\bf{#1}}
\end{center}
\vspace{6mm}
\end{minipage}}

\newcommand{\PSAIEauthor}[3]
{\begin{minipage}[t]{\textwidth}
\begin{center}
\textsc{#1}
\begin{small}#2
\texttt{#3}
\end{small}
\end{center}
\vspace{1mm}
\end{minipage}}

\newcommand{\PSAIEreceived}[1]
{\begin{minipage}[t]{\textwidth}\vspace{1.5mm}
\begin{center}
{\small [Received #1]}
\end{center}
\vspace{2mm}
\end{minipage}}

\newcommand{\PSAIEdedication}[1]
{\begin{minipage}[t]{\textwidth}
\begin{center} {\small\textit{ #1}}
\end{center}
\vspace{2mm}
\end{minipage}}

\newcommand{\PSAIEabstract}[1]
{\begin{center}\begin{minipage}[t]{110mm} \setlength{\baselineskip}{10pt}%
\begin{small}
\textbf{Abstract.} #1
\end{small}
\end{minipage}\end{center}}

\newcommand{\PSAIEkey}[1]
{\begin{center}\begin{minipage}[t]{110mm} \vspace*{1 true mm}%
\setlength{\baselineskip}{10pt}%
{\small\textit{Keywords}: #1} \vspace{1mm}
\end{minipage}\end{center}}

\newcommand{\PSAIEclass}[2]
{\begin{minipage}[t]{\textwidth} \setlength{\baselineskip}{11pt}%
\vspace*{2.5 true mm}%
{\small\textit{Mathematical Subject Classification:} #1\\
\textit{Keywords}: #2}
\end{minipage}}

\newcommand{\PSAIEacknowlmnt}[1]
{\begin{minipage}[t]{\textwidth}%
\setlength{\baselineskip}{11pt}%
{\small\textbf{Acknowledgement.} #1}
\end{minipage}}

%----------- New biblabel and captions for figures and
%----------- tables which are not floating
\makeatletter
\renewcommand\@biblabel[1]{[#1]}
\newcommand{\figcaption}{\def\@captype{figure}\caption}
\newcommand{\tabcaption}{\def\@captype{table}\caption}
\makeatother
%%
