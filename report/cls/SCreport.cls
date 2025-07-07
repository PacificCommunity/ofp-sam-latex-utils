\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SCreport}[2025/07/08 v21.1 WCPFC Scientific Committee report]

% ----------
% 1  Inherit
% ----------

% 1.1 Class
\LoadClass[11pt]{article}

% ---------------
% 2  Dependencies
% ---------------

% 2.1 Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{amssymb,amsmath}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{comment}
\RequirePackage{etoolbox}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{grffile}  % allow ~, ., etc. in figure filenames
\RequirePackage{natbib}
\RequirePackage{parskip}
\RequirePackage{pdflscape}
\RequirePackage{relsize}
\RequirePackage{setspace}
\RequirePackage{soul}
\RequirePackage{subcaption}
\RequirePackage{tocloft}
\RequirePackage{url}
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{xspace}
\RequirePackage{xstring}
\RequirePackage{hyperref}

% 2.2 Path
\graphicspath{{figs/}}

% -----------
% 3  Settings
% -----------

% 3.1 Color
\definecolor{SCblue}{rgb}{0,0.1,0.7}
\hypersetup{colorlinks,linkcolor=SCblue,filecolor=SCblue,urlcolor=SCblue,citecolor=SCblue}
\def\hldefaultcol{Khaki}
\sethlcolor{\hldefaultcol}

% 3.2 Spacing
\frenchspacing
\onehalfspacing
\setlength\cftbeforesecskip{0pt}  % vertical space in TOC

% 3.3 Encoding
\DeclareUnicodeCharacter{2212}{-}  % convert minus sign to hyphen

% 3.4 Cross-references
\def\sectionautorefname{Section}
\def\subsectionautorefname{Section}
\def\subsubsectionautorefname{Section}
\def\bibsection{\section{References}}

% -------------------------
% 4  Commands and variables
% -------------------------

% 4.1 Misc
\newcommand{\LnS}{\mathrm{log}\hspace{0.4mm}}
\newcommand{\degree}{$^{\circ}$\xspace}
\newcommand{\ra}{$\rightarrow{\;}$}
\newcommand{\vs}{\emph{vs.}\xspace}
\newcommand{\via}{\emph{via}\xspace}
\newcommand{\done}[1]{\st{#1}} % strike text

% 4.2 SPC
\newcommand{\spcbiblio}{~/ofp-sam-latex-utils/ofp-sam-biblio.bib}
\newcommand{\spc}{Oceanic Fisheries Programme of the Pacific Community}
\newcommand{\lrp}{$20\%\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\mfcl}{MULTIFAN-CL\xspace}
\newcommand{\spalb}{south Pacific albacore tuna\xspace}
\newcommand{\alb}{albacore tuna\xspace}
\newcommand{\bet}{bigeye tuna\xspace}

% 4.3 Spawning biomass
\renewcommand{\sb}{$\mbox{\emph{SB}}$\xspace}
\newcommand{\sbcurr}{$\mbox{\emph{SB}}_\mathrm{current}$\xspace}
\newcommand{\sbcsbfo}{$\mbox{\emph{SB}}_\mathrm{current}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbcsbmsy}{$\mbox{\emph{SB}}_\mathrm{current}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sbfo}{$\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sblatest}{$\mbox{\emph{SB}}_\mathrm{latest}$\xspace}
\newcommand{\sblsbfo}{$\mbox{\emph{SB}}_\mathrm{latest}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sblsbmsy}{$\mbox{\emph{SB}}_\mathrm{latest}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sblsbo}{$\mbox{\emph{SB}}_\mathrm{latest}/\mbox{\emph{SB}}_{0}$\xspace}
\newcommand{\sbmsy}{$\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sbmsysbo}{$\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}/\mbox{\emph{SB}}_{0}$\xspace}
\newcommand{\sbmsysbfo}{$\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbo}{$\mbox{\emph{SB}}_{0}$\xspace}
\newcommand{\sbrecent}{$\mbox{\emph{SB}}_\mathrm{recent}$\xspace}
\newcommand{\sbrsbfo}{$\mbox{\emph{SB}}_\mathrm{recent}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbrsbmsy}{$\mbox{\emph{SB}}_\mathrm{recent}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sbsbfo}{$\mbox{\emph{SB}}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbsbmsy}{$\mbox{\emph{SB}}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sbt}{$\mbox{\emph{SB}}_t$\xspace}
\newcommand{\sbtfo}{$\mbox{\emph{SB}}_{t,F=0}$\xspace}
\newcommand{\sbtsbfo}{$\mbox{\emph{SB}}_t/\mbox{\emph{SB}}_{t,F=0}$\xspace}
\newcommand{\sbtsbmsy}{$\mbox{\emph{SB}}_t/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}

% 4.4 Biomass
\newcommand{\bcurr}{$\mbox{\emph{B}}_\mathrm{current}$\xspace}
\newcommand{\bcbfo}{$\mbox{\emph{B}}_\mathrm{current}/\mbox{\emph{B}}_{F=0}$\xspace}
\newcommand{\bcbmsy}{$\mbox{\emph{B}}_\mathrm{current}/\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\bfo}{$\mbox{\emph{B}}_{F=0}$\xspace}
\newcommand{\blatest}{$\mbox{\emph{B}}_\mathrm{latest}$\xspace}
\newcommand{\blbfo}{$\mbox{\emph{B}}_\mathrm{latest}/\mbox{\emph{B}}_{F=0}$\xspace}
\newcommand{\blbmsy}{$\mbox{\emph{B}}_\mathrm{latest}/\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\bmsy}{$\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\bo}{$\mbox{\emph{B}}_{0}$\xspace}

% 4.5 Fishing mortality and catch
\newcommand{\clatest}{$\mbox{\emph{C}}_\mathrm{latest}$\xspace}
\newcommand{\clatestmsy}{$\mbox{\emph{C}}_\mathrm{latest}/F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\fcurr}{$F_\mathrm{current}$\xspace}
\newcommand{\fmsy}{$F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\ffmsy}{$F/F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\fmult}{$f_\mathrm{mult}$\xspace}
\newcommand{\frecent}{$F_\mathrm{recent}$\xspace}
\newcommand{\fref}{$F_\mathrm{recent}/F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\ftfmsy}{$F_t/F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\msy}{$\mbox{MSY}$\xspace}
\newcommand{\yfcurr}{$Y_{F_\mathrm{current}}$\xspace}
\newcommand{\yfrecent}{$Y_{F_\mathrm{recent}}$\xspace}

% 4.6 Colors
\newcommand{\hllb}[1]{\sethlcolor{PaleTurquoise} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlam}[1]{\sethlcolor{Aquamarine} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcyan}[1]{\sethlcolor{Cyan} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlyel}[1]{\sethlcolor{Gold} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlred}[1]{\sethlcolor{OrangeRed} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlgreen}[1]{\sethlcolor{YellowGreen} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcoral}[1]{\sethlcolor{Coral} \hl{#1} \sethlcolor{\hldefaultcol}}

% --------
% 5 Figure
% --------

% 5.1 Placeholder caption
\newcommand{\capnow}{}

% 5.2 Normal figure
\newcommand{\addcenterfig}[3][Caption to be completed]{
  \begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=\textwidth]{#3}
      \caption{#1 \label{#2}}
    \end{center}
  \end{figure}
}

% 5.3 Figure of a specific width
\newcommand{\addcenterfigCW}[4][Caption to be completed]{
  \begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=#2]{#4}
      \caption{#1 \label{#3}}
    \end{center}
  \end{figure}
}

% 5.4 Landscape figure
\newcommand{\addcenterfigLS}[3][Caption to be completed]{
  \newgeometry{left=0.5cm,bottom=2.5cm,right=1cm,top=2.5cm}
  \thispagestyle{empty}
  \begin{landscape}
    \vspace*{\fill}
    \begin{figure}[!ht]
      \begin{center}
        \includegraphics[width=620pt]{#3}
        \caption{#1 \label{#2}}
      \end{center}
    \end{figure}
    \vspace*{\fill}
    \clearpage
  \end{landscape}
  \restoregeometry
}

% ------------
% 6 Title page
% ------------

% 6.1 Report variables
\newcommand{\spcauthor}{Use \textbackslash reportauthor to specify report authors}
\newcommand{\reportauthor}[1]{\renewcommand{\spcauthor}{#1}}
\newcommand{\spctitle}{Use \textbackslash reporttitle to specify report title}
\newcommand{\reporttitle}[1]{\renewcommand{\spctitle}{#1}}
\newcommand{\repnumbr}{Use \textbackslash reportnumber to specify report number}
\newcommand{\reportnumber}[1]{\renewcommand{\repnumbr}{#1}}
\newcommand{\repdate}{Use \textbackslash reportdate to specify report date}
\newcommand{\reportdate}[1]{\renewcommand{\repdate}{#1}}

% 6.2 Meeting variables
\def\tpmeeting{Use \textbackslash reporttype to select meeting}
\def\tplocation{???}
\def\tpdates{???}
\def\tpnum{???}
\newcommand{\reporttype}[1]{
  \def\typedef{#1}
  % SC11
  \IfStrEq{\typedef}{SC11}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\ELEVENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC11}{\def\tplocation{Pohnpei, Federated States of Micronesia}}{}
  \IfStrEq{\typedef}{SC11}{\def\tpdates{5--13 August 2015}}{}
  \IfStrEq{\typedef}{SC11}{\def\tpnum{WCPFC-SC11-2015}}{}
  % SC12
  \IfStrEq{\typedef}{SC12}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\TWELFTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC12}{\def\tplocation{Goatland, Cuntsville}}{}
  \IfStrEq{\typedef}{SC12}{\def\tpdates{X--X August 2016}}{}
  \IfStrEq{\typedef}{SC12}{\def\tpnum{WCPFC-SC12-2016}}{}
  % SC14
  \IfStrEq{\typedef}{SC14}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\FOURTEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC14}{\def\tplocation{Busan, Korea}}{}
  \IfStrEq{\typedef}{SC14}{\def\tpdates{8--16 August 2018}}{}
  \IfStrEq{\typedef}{SC14}{\def\tpnum{WCPFC-SC14-2018}}{}
  % SC15
  \IfStrEq{\typedef}{SC15}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\FIFTEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC15}{\def\tplocation{Pohnpei, Federated States of Micronesia}}{}
  \IfStrEq{\typedef}{SC15}{\def\tpdates{12--20 August 2019}}{}
  \IfStrEq{\typedef}{SC15}{\def\tpnum{WCPFC-SC15-2019}}{}
  % SC16
  \IfStrEq{\typedef}{SC16}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\SIXTEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC16}{\def\tplocation{Online}}{}
  \IfStrEq{\typedef}{SC16}{\def\tpdates{11--20 August 2020}}{}
  \IfStrEq{\typedef}{SC16}{\def\tpnum{WCPFC-SC16-2020}}{}
  % SC17
  \IfStrEq{\typedef}{SC17}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\SEVENTEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC17}{\def\tplocation{Online}}{}
  \IfStrEq{\typedef}{SC17}{\def\tpdates{11--19 August 2021}}{}
  \IfStrEq{\typedef}{SC17}{\def\tpnum{WCPFC-SC17-2021}}{}
  % SC18
  \IfStrEq{\typedef}{SC18}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\EIGHTEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC18}{\def\tplocation{Online}}{}
  \IfStrEq{\typedef}{SC18}{\def\tpdates{10--18 August 2022}}{}
  \IfStrEq{\typedef}{SC18}{\def\tpnum{WCPFC-SC18-2022}}{}
  % SC19
  \IfStrEq{\typedef}{SC19}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\NINETEENTH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC19}{\def\tplocation{Koror, Palau}}{}
  \IfStrEq{\typedef}{SC19}{\def\tpdates{16--24 August 2023}}{}
  \IfStrEq{\typedef}{SC19}{\def\tpnum{WCPFC-SC19-2023}}{}
  % SC20
  \IfStrEq{\typedef}{SC20}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\TWENTIETH REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC20}{\def\tplocation{Manila, Philippines}}{}
  \IfStrEq{\typedef}{SC20}{\def\tpdates{14--21 August 2024}}{}
  \IfStrEq{\typedef}{SC20}{\def\tpnum{WCPFC-SC20-2024}}{}
  % SC21
  \IfStrEq{\typedef}{SC21}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\TWENTY-FIRST REGULAR SESSION}}{}
  \IfStrEq{\typedef}{SC21}{\def\tplocation{Nuku'alofa, Tonga}}{}
  \IfStrEq{\typedef}{SC21}{\def\tpdates{13--21 August 2025}}{}
  \IfStrEq{\typedef}{SC21}{\def\tpnum{WCPFC-SC21-2025}}{}
}

% 6.3 Render title page
\newcommand{\wcpfctitlepage}{
  \thispagestyle{empty}
  \begin{center}
    \begin{figure}
      \begin{center}
        \vspace{-2ex}
        \includegraphics[width=190pt]{WCPFC-logo}\\[-2ex]
      \end{center}
    \end{figure}
    \singlespace
    \textbf{\sffamily\small\tpmeeting}\\[3ex]
    \textsf{\tplocation}\\
    \textsf{\tpdates}\\
    \rule{\textwidth}{0.5mm}\\
    \textbf{\sffamily\spctitle}\\[-1.5ex]
    \rule{\textwidth}{0.5mm}
  \end{center}
  \vspace{-1ex}
  \begin{flushright}
    \textbf{\sffamily\repnumbr}\\
    \textbf{\sffamily\repdate}
  \end{flushright}
  \vspace{2in}
  \begin{center}
    \textbf{\sffamily\spcauthor}
  \end{center}
  \clearpage
}
