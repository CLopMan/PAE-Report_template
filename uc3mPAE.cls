\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uc3mPAE}[2025/02/21 v1.0 Authored by CLM]

% language
\DeclareOption{es}{
    \def\lang{spanish}
    \def\college{Universidad Carlos III}
    \def\subject{Prácticas Externas}
    \def\companyAdvisorText{Tutor en empresa}
    \def\academicAdvisorText{Tutor académico}
    \def\courseText{Curso}
}

\DeclareOption{en}{
    \def\lang{english}
    \def\college{Universidad Carlos III}
    \def\subject{Professional Interships}
    \def\companyAdvisorText{Company advisor}
    \def\academicAdvisorText{Academic advisor}
    \def\courseText{Course}
}

\ExecuteOptions{es}
\ProcessOptions\relax


% parent class
\LoadClass[15pt]{report}

\RequirePackage[\lang]{babel}

% basic packages
\RequirePackage[T1]{fontenc}
\RequirePackage{float}
\RequirePackage{graphicx}
\usepackage[a4paper, top=2.5cm, bottom=2.5cm, left=3cm, right=3cm]{geometry}
\usepackage[hidelinks]{hyperref}

\hypersetup{
    colorlinks=true, % Activa el color en los enlaces
    linkcolor=blue,  % Color para los enlaces internos (por ejemplo, tablas de contenido)
    citecolor=black,  % Color para las citas bibliográficas
    filecolor=blue,  % Color para enlaces a archivos
    urlcolor=blue    % Color para los enlaces a URLs
}


% titles
\RequirePackage{titlesec}

\titleformat{\chapter}[hang]
  {\normalfont\huge\bfseries\centering}  
  {}
  {1pc}
  {\huge}
  []

\titlespacing*{\chapter}{0pt}{0em}{2em}

% headers and footers

\RequirePackage{fancyhdr}

\fancypagestyle{fancy} {
    \makeatletter
        \fancyhf{} % limpia encabezados y pies de página
        \fancyhead[R]{\@author}
        \fancyhead[L]{\@title}
        \fancyfoot[C]{\thepage}
    \makeatother
}

\fancypagestyle{index} {
    \makeatletter
        \fancyhf{} % limpia encabezados y pies de página
        \fancyhead[R]{\@author}
        \fancyhead[L]{\@title}
    \makeatother
}
\fancypagestyle{plain} {
    \makeatletter
        \fancyhf{} % limpia encabezados y pies de página
        \fancyhead[R]{\@author}
        \fancyhead[L]{\@title}
        \fancyfoot[C]{\thepage}
    \makeatother
}

% Commands

\newcommand{\courseyear}[1]{\def\courseyearvar{#1}}
\newcommand{\company}[1]{\def\companyname{#1}}
\newcommand{\advisorCollege}[1]{\def\advUni{#1}}
\newcommand{\advisorCompany}[1]{\def\advComp{#1}}
\newcommand{\mail}[1]{\def\mailaddr{#1}}
\newcommand{\NIA}[1]{\def\NIAnumber{#1}}
\newcommand{\degree}[1]{\def\degreename{#1}}
\newcommand{\course}[1]{\def\coursewhich{#1}}
\newcommand{\logoIMG}[1]{\def\logo{#1}}


% Environment
\makeatletter
\newenvironment{memoria}{
    \cleardoublepage
    \pagestyle{fancy}
}
\makeatother


% title page

\newcommand{\makecover} {
        \makeatletter
        \begin{titlepage}
            \centering
            \includegraphics[width=0.9\textwidth]{uc3m.jpg} 
            {\Huge \college\\
            
             \Large  \subject\\
             \vspace{0.5cm}
             \courseText~\courseyearvar}
            \vspace{2cm}

            {\Huge \textbf{\@title} \par}
            \vspace{0.5cm}
            {\Large \companyname \par}
            \vspace{1cm}
            \includegraphics[width=0.33\textwidth]{\logo}
            \vspace{4.7cm}
            

           \textbf{\degreename, \coursewhich}\\
            \vspace{0.2cm} 
            \@author~        (NIA: \NIAnumber, e-mail: \mailaddr)\\
            \vspace{0.5cm}

           
            \textbf{\companyAdvisorText:} \advComp\\
            \vspace{0.2cm}
            \textbf{\academicAdvisorText:} \advUni\\
            \vspace{0.5cm}
            \textbf{fecha:} \@date
            
            
        \end{titlepage}
        \makeatother
}


