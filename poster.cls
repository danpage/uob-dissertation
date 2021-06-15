% Copyright (C) 2017 Daniel Page <csdsp@bristol.ac.uk>
%
% Use of this source code is restricted per the CC BY-SA license, a copy of
% which can be found via http://creativecommons.org (and should be included 
% as LICENSE.txt within the associated archive or repository).

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{poster}[2017/07/07, Daniel Page <csdsp@bristol.ac.uk>]

\makeatletter

% =============================================================================

% parse class options

\RequirePackage{pgfkeys}
\RequirePackage{pgfopts}

\pgfkeys{/poster/.cd,
%     author = string
      author/.store in = \poster@author,
      author           = {},
% supervisor = string
  supervisor/.store in = \poster@supervisor, 
  supervisor           = {},
%     degree = [BSc|MEng|MSci|MSc|PhD]
      degree/.store in = \poster@degree,
      degree           = {MEng},
%      title = string
       title/.store in = \poster@title@major,
       title           = {},
%   subtitle = string
    subtitle/.store in = \poster@title@minor,
    subtitle           = {},
%       type = string
        type/.store in = \poster@type,
        type           = {},
%       year = string
        year/.store in = \poster@year,
        year           = {\the\year},
%      board = string
       board/.store in = \poster@board,
       board           = {}
}

\ProcessPgfOptions{/poster}

% load base class, then any general-purpose packages required

\LoadClass[final]{beamer}

% http://www.ctan.org/pkg/amslatex
\RequirePackage{amsmath}
\RequirePackage{amssymb}
% https://www.ctan.org/pkg/beamerposter
\RequirePackage[orientation={portrait},size={a1},scale={1.5}]{beamerposter}
% http://www.ctan.org/pkg/biblatex
\RequirePackage[style=numeric]{biblatex}
% http://www.ctan.org/pkg/calc
\RequirePackage{calc}
% http://www.ctan.org/pkg/hyperref
\RequirePackage{hyperref}
% http://www.ctan.org/pkg/ragged2e
\RequirePackage{ragged2e}
% http://www.ctan.org/pkg/tcolorbox
\RequirePackage{tcolorbox}
% http://www.ctan.org/pkg/xcolor
\RequirePackage{xcolor}
% http://www.ctan.org/pkg/xstring
\RequirePackage{xstring}

% =============================================================================

% configure biblatex

\addbibresource{poster.bib}

% configure hyperref

\hypersetup{colorlinks={true},bookmarks={false},urlcolor={red}}

% configure xcolor

\definecolor{uobred}{RGB}{191,47,56}

% -----------------------------------------------------------------------------

% configure the beamer package in a way that beamerposter can cope with

\usetheme[footheight={0.7cm}]{boxes} 
\usecolortheme{rose}

% configure the poster header

\setbeamertemplate{headline}{  
  \leavevmode
  \begin{beamercolorbox}[wd={\paperwidth}]{headline}
  \vspace*{4.0ex}
  \begin{columns}[c]
  \begin{column}{0.8\paperwidth}
  \begin{center}
  \raggedright
  {\huge  {\poster@title@major}}                                                                          \\ [4.0ex]
  {\large Student: {\poster@author}, Supervisor: {\poster@supervisor}, Dissertation Type: {\poster@type}} \\ [4.0ex]
  {\large University of Bristol, Department of Computer Science}
  \end{center}
  \end{column}
  \begin{column}{0.1\paperwidth}
  \begin{tcolorbox}[height={6.0cm},width={6.0cm},halign={center},valign={center},colback={white},colframe={black}]
  \Huge \poster@board
  \end{tcolorbox}
  \end{column}
  \end{columns}
  \vspace*{4.0ex}
  \end{beamercolorbox}
}

% configure the poster footer

\setbeamertemplate{footline}{
  \leavevmode
  \begin{beamercolorbox}[wd={\paperwidth}]{footline}
  \vspace*{4.0ex}
  \begin{columns}[c]
  \begin{column}{0.3\paperwidth}
  \begin{center}
  \includegraphics[scale={1.0}]{image/uob.pdf}
  \end{center}
  \end{column}
  \begin{column}{0.3\paperwidth}
  \begin{center}
  \includegraphics[scale={1.0}]{image/cs.pdf}
  \end{center}
  \end{column}
  \begin{column}{0.3\paperwidth}
  \begin{center}
  \includegraphics[scale={1.0}]{image/qr.pdf}
  \end{center}
  \end{column}
  \end{columns}
  \vspace*{4.0ex}
  \end{beamercolorbox}
}

% configure beamer for poster-like (vs. slide-like) style

\setbeamercolor{headline}{bg={uobred},fg={white}}
\setbeamercolor{footline}{bg={white},fg={black}}

\setbeamersize{text margin left={2.0cm}}
\setbeamersize{text margin right={2.0cm}}
\setbeamersize{sidebar width left={0.0cm}}
\setbeamersize{sidebar width right={0.0cm}}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{bibliography item}[text]

\addtobeamertemplate{block begin}{}{\justifying}{}

% =============================================================================

\makeatother
