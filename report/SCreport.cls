\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SCreport}[2015/06/29 Report class for WCPFC Scientific Committee]

\LoadClass[11pt]{article}

\DeclareOption{sc11}{\def\boum{allo!}}
\ProcessOptions\relax

% Load standard set of packages
\RequirePackage{amssymb, amsmath}
\RequirePackage{booktabs}
\RequirePackage{etoolbox}
\RequirePackage{xstring}
\RequirePackage{caption}
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fullpage}
\RequirePackage[margin=1in]{geometry} % customize margins 
\RequirePackage{comment}
\RequirePackage{soul}
\RequirePackage{pdflscape}
\RequirePackage{natbib}
\RequirePackage{url}
\RequirePackage{xspace}
\RequirePackage{soul}
\RequirePackage{parskip}
\RequirePackage{grffile} % allows ~, . ,etc. into figure file names
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage{setspace}
\RequirePackage[utf8]{inputenc}
\RequirePackage{hyperref}
\RequirePackage{relsize}
%%%%%%%%%%%%%%%%%%%%%%%%%
% Defining format for hyperlinks 
\hypersetup{colorlinks, 
linkcolor= PineGreen, 
filecolor= TealBlue, 
urlcolor= PineGreen,
citecolor= NavyBlue}
%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\spcbiblio}{~/ofp-sam-latex-utils/ofp-sam-biblio.bib}

% Define custom commands
\newcommand{\LnS}{\mathrm {log} \hspace{0.4mm}}
\newcommand{\spc}{Oceanic Fisheries Programme, Secretariat of the Pacific Community}
%% more shortcuts: versus, via, degrees, right arrow
\newcommand{\degree}{$^{\circ}$\xspace}
\newcommand{\ra}{$\rightarrow{\;}$}
\newcommand{\vs}{\emph{vs.}\xspace}
\newcommand{\via}{\emph{via}\xspace}

%%%% assessments shortcuts
\newcommand{\sbo}{$\mbox{\emph{SB}}_{0}$\xspace}
\newcommand{\sbfo}{$\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sblsbmsy}{$\mbox{\emph{SB}}_{latest}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sbcsbmsy}{$\mbox{\emph{SB}}_{current}/\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sblatest}{$\mbox{\emph{SB}}_{latest}$\xspace}
\newcommand{\sbcurr}{$\mbox{\emph{SB}}_{current}$\xspace}
\newcommand{\sbmsy}{$\mbox{\emph{SB}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\sblsbfo}{$\mbox{\emph{SB}}_{latest}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbcsbfo}{$\mbox{\emph{SB}}_{current}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sbsbfo}{$\mbox{\emph{SB}}/\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\sblsbo}{$\mbox{\emph{SB}}_{latest}/\mbox{\emph{SB}}_{0}$\xspace}

\newcommand{\bo}{$\mbox{\emph{B}}_{0}$\xspace}
\newcommand{\bfo}{$\mbox{\emph{B}}_{F=0}$\xspace}
\newcommand{\blbmsy}{$\mbox{\emph{B}}_{latest}/\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\bcbmsy}{$\mbox{\emph{B}}_{current}/\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\blatest}{$\mbox{\emph{B}}_{latest}$\xspace}
\newcommand{\bcurr}{$\mbox{\emph{B}}_{current}$\xspace}
\newcommand{\bmsy}{$\mbox{\emph{B}}_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\blbfo}{$\mbox{\emph{B}}_{latest}/\mbox{\emph{B}}_{F=0}$\xspace}
\newcommand{\bcbfo}{$\mbox{\emph{B}}_{current}/\mbox{\emph{B}}_{F=0}$\xspace}

\newcommand{\fmsy}{$F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\fref}{$F_{current}/F_{\mbox{\smaller[3]{MSY}}}$\xspace}
\newcommand{\fcurr}{$F_{current}$\xspace}
\newcommand{\fmult}{\emph{fmult}\xspace}
\newcommand{\yfcurr}{$YF_{current}$\xspace}


\newcommand{\clatest}{$\mbox{\emph{C}}_{latest}$\xspace}
\newcommand{\clatestmsy}{$\mbox{\emph{C}}_{latest}/F_{\mbox{\smaller[3]{MSY}}}$\xspace}

\newcommand{\msy}{$\mbox{MSY}$\xspace}
\newcommand{\lrp}{$20\%\mbox{\emph{SB}}_{F=0}$\xspace}
\newcommand{\mfcl}{MULTIFAN-CL\xspace}

\newcommand{\spalb}{south Pacific albacore tuna\xspace}
\newcommand{\alb}{albacore tuna\xspace}
\newcommand{\bet}{bigeye tuna\xspace}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% highlighting commands for text editing
\def\hldefaultcol{Khaki}
\sethlcolor{\hldefaultcol}

\newcommand{\done}[1]{\st{#1}} % strikes text
\newcommand{\hllb}[1]{\sethlcolor{PaleTurquoise} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlam}[1]{\sethlcolor{Aquamarine} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcyan}[1]{\sethlcolor{Cyan} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlyel}[1]{\sethlcolor{Gold} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlred}[1]{\sethlcolor{OrangeRed} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlgreen}[1]{\sethlcolor{YellowGreen} \hl{#1} \sethlcolor{\hldefaultcol}}
\newcommand{\hlcoral}[1]{\sethlcolor{Coral} \hl{#1} \sethlcolor{\hldefaultcol}}


% normal figure, centred in page
\newcommand{\capnow}{}
\newcommand{\addcenterfig}[3][Caption to be completed]{
  \begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=\textwidth]{#3}
     \caption{#1 \label{#2}}
    \end{center}
  \end{figure}
}

\newcommand{\addcenterfigCW}[4][Caption to be completed]{
  \begin{figure}[!ht]
    \begin{center}
      \includegraphics[width=#2]{#4}
     \caption{#1 \label{#3}}
    \end{center}
  \end{figure}
}

% landscape figure
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% WCPFC title page %%%%%%%%%%%%%%%%%%%%% 
%% Commands for users to define title page settings
\newcommand{\spcauthor}{Use \textbackslash reportauthor to defined report authors}
\newcommand{\reportauthor}[1]{\renewcommand{\spcauthor}{#1}}

\newcommand{\spctitle}{Use \textbackslash reporttitle to defined report authors}
\newcommand{\reporttitle}[1]{\renewcommand{\spctitle}{#1}}

\newcommand{\repnumbr}{Use \textbackslash reportnumber to defined report number}
\newcommand{\reportnumber}[1]{\renewcommand{\repnumbr}{#1}}

\newcommand{\repdate}{Use \textbackslash reportdate to defined report date}
\newcommand{\reportdate}[1]{\renewcommand{\repdate}{#1}}

%% define title page macro 
\newcommand{\wcpfctitlepage}{

\thispagestyle{empty}
\begin{center}
\begin{figure}
\begin{center}
\includegraphics[scale=0.6]{WCPFC-logo}

\end{center}
\end{figure}
\textbf{\tpmeeting}\\
\tplocation\\
\tpdates\\

\vspace{0.5in}
\rule{\textwidth}{0.5mm}
%\vspace{-0.25cm}
\bfseries{\spctitle} % report title inserted here
\rule{\textwidth}{0.5mm}
\end{center}

\begin{flushright}
%\textbf{\tpnum/\repnumbr} % report number
\textbf{\repnumbr}
\end{flushright}
\vspace{0.25in}

\vspace{0.25in}
\begin{flushright}
%\textbf{23 July 2022}
\textbf{\repdate}
\end{flushright}

\vspace{0.5in}
\begin{center} % report authors
\textbf{\spcauthor }
%\textbf{\spcauthor \footnote{\label{spc-ref}Oceanic Fisheries Programme, Secretariat of the Pacific Community}}
\end{center}



\clearpage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% macro \reporttype defines meeting information for title page based on argument
\newcommand{\reporttype}[1]{
\def\typedef{#1} % \typedef is used to match meeting info

%%%%%%%%%% Settings for SC11: 
\IfStrEq{\typedef}{SC11}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\ELEVENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC11}{\def\tplocation{Pohnpei, Federated States of Micronesia}}{}
\IfStrEq{\typedef}{SC11}{\def\tpdates{5--13 August 2015}}{}
\IfStrEq{\typedef}{SC11}{\def\tpnum{WCPFC-SC11-2015}}{}

%%%%%%%%%% Settings for SC12: 
\IfStrEq{\typedef}{SC12}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\TWELTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC12}{\def\tplocation{Goatland, Cuntsville}}{}
\IfStrEq{\typedef}{SC12}{\def\tpdates{X--X August 2016}}{}
\IfStrEq{\typedef}{SC12}{\def\tpnum{WCPFC-SC12-2016}}{}

%%%%%%%%%% Settings for SC14: 
\IfStrEq{\typedef}{SC14}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\FOURTEENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC14}{\def\tplocation{Busan, Korea}}{}
\IfStrEq{\typedef}{SC14}{\def\tpdates{8--16 August 2018}}{}
\IfStrEq{\typedef}{SC14}{\def\tpnum{WCPFC-SC14-2018}}{}

%%%%%%%%%% Settings for SC15: 
\IfStrEq{\typedef}{SC15}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\FIFTEENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC15}{\def\tplocation{Pohnpei, Federated States of Micronesia}}{}
\IfStrEq{\typedef}{SC15}{\def\tpdates{12--20 August 2019}}{}
\IfStrEq{\typedef}{SC15}{\def\tpnum{WCPFC-SC15-2019}}{}

%%%%%%%%%% Settings for SC16: 
\IfStrEq{\typedef}{SC16}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\SIXTEENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC16}{\def\tplocation{Online}}{}
\IfStrEq{\typedef}{SC16}{\def\tpdates{11--20 August 2020}}{}
\IfStrEq{\typedef}{SC16}{\def\tpnum{WCPFC-SC16-2020}}{}

%%%%%%%%%% Settings for SC17: 
\IfStrEq{\typedef}{SC17}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\SEVENTEENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC17}{\def\tplocation{Online}}{}
\IfStrEq{\typedef}{SC17}{\def\tpdates{11--19 August 2021}}{}
\IfStrEq{\typedef}{SC17}{\def\tpnum{WCPFC-SC17-2021}}{}

%%%%%%%%%% Settings for SC18: 
\IfStrEq{\typedef}{SC18}{\def\tpmeeting{SCIENTIFIC COMMITTEE\\EIGHTEENTH REGULAR SESSION}}{}
\IfStrEq{\typedef}{SC18}{\def\tplocation{Online}}{}
\IfStrEq{\typedef}{SC18}{\def\tpdates{10--18 August 2022}}{}
\IfStrEq{\typedef}{SC18}{\def\tpnum{WCPFC-SC18-2022}}{}


%%%%%%%%%% Settings for MOW4: 
\IfStrEq{\typedef}{MOW4}{\def\tpmeeting{WCPFC\\HARVEST STRATEGY WORKSHOP}}{}
\IfStrEq{\typedef}{MOW4}{\def\tplocation{Stones Hotel}}{}
\IfStrEq{\typedef}{MOW4}{\def\tplocation{Kuta, Bali}}{}
\IfStrEq{\typedef}{MOW4}{\def\tpdates{30 November--1 December 2015}}{}
\IfStrEq{\typedef}{MOW4}{\def\tpnum{}}{}

%%%%%%%%%% Settings for ...:
%% Follow same format as above 
}

\def\tpmeeting{No valid meeting defined, use \textbackslash reporttype with argument: SC11, ...}
\def\tplocation{???}
\def\tpdates{???}
\def\tpnum{???}

