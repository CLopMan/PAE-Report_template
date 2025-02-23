\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uc3mPAE_template}[2025/02/21 v1.0 Authored by CLM]

% language
\DeclareOption{es}{
    \def\lang{spanish}
    % cover
    \def\college{Universidad Carlos III}
    \def\subject{Prácticas Externas}
    \def\companyAdvisorText{Tutor en empresa}
    \def\academicAdvisorText{Tutor académico}
    \def\courseText{Curso}
    \def\dateText{Fecha}
    \def\nameText{Nombre}
    \def\phoneText{Teléfono}
    % datos.tex
    \def\chapDatos{Datos}
    \def\secStudentData{Datos del estudiante}
    \def\secCompanyData{Datos de la empresa}
    \def\secPeriodData{Periodo de realización}
    \def\secAdvisorData{Datos del tutor}

    \def\studentInformationText{Datos del estudiante}
    \def\companyInformationText{Datos de la empresa}
    \def\periodTableTitle{Información de prácticas}
    \def\AdvisorInformationText{Datos del tutor de prácticas}

    \def\birthDateText{Fecha de nacimiento}
    \def\addrText{Dirección}
    \def\founderText{Fundador}
    \def\foundationDateText{Fecha de fundación}
    \def\totalHourText{Horas totales}
    \def\weeklyHourText{Horas semanales}
    \def\creditsText{Número de créditos ECTS}
    \def\initDateText{Fecha de inicio}
    \def\endDateText{Fecha de finalización}
}

\DeclareOption{en}{
    \def\lang{english}
    %cover
    \def\college{Universidad Carlos III}
    \def\subject{Professional Interships}
    \def\companyAdvisorText{Company advisor}
    \def\academicAdvisorText{Academic advisor}
    \def\courseText{Course}
    \def\dateText{Date}
    \def\nameText{Name}
    \def\phoneText{Phone number}
    % datos.tex
    \def\chapDatos{Relevant Data}
    \def\secStudentData{Student Information}
    \def\secCompanyData{Company Summary}
    \def\secPeriodData{Intership Period}
    \def\secAdvisorData{Advisor Information}

    \def\studentInformationText{Student Information}
    \def\companyInformationText{Company Summary}
    \def\periodTableTitle{Intership Information}
    \def\AdvisorInformationText{Advisor Information}

    \def\birthDateText{Birth date}
    \def\addrText{Address}
    \def\founderText{Founder}
    \def\foundationDateText{Foundation Date}
    \def\periodTableTitle{Intership Information}
    \def\totalHourText{Total Hours}
    \def\weeklyHourText{Weekly Hours}
    \def\creditsText{Number of ECTS Credits}
    \def\initDateText{Starting Date}
    \def\endDateText{Finishing Date}
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

% tables
\RequirePackage{booktabs}

%Variables
\def\authorName{\@author}
\def\titleText{\@author}

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
\newcommand{\dateOfBirth}[1]{\def\birthdate{#1}}
\newcommand{\companyAddress}[1]{\def\companyaddr{#1}}
\newcommand{\companyCEO}[1]{\def\ceo{#1}}
\newcommand{\companyFounder}[1]{\def\founder{#1}}
\newcommand{\companyFoundationDate}[1]{\def\foundDate{#1}}
\newcommand{\startDate}[1]{\def\initDate{#1}}
\newcommand{\finishDate}[1]{\def\endDate{#1}}
\newcommand{\nECTS}[1]{\def\credits{#1}}
\newcommand{\totalHours}[1]{\def\thours{#1}}
\newcommand{\weeklyHours}[1]{\def\whours{#1}}
\newcommand{\advContactMail}[1]{\def\advMail{#1}}
\newcommand{\advContactPhone}[1]{\def\advPhone{#1}}


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
            \vfill
            

           \textbf{\degreename, \coursewhich}\\
            \vspace{0.2cm} 
            \@author~        (NIA: \NIAnumber, e-mail: \mailaddr)\\
            \vspace{0.5cm}

           
            \textbf{\companyAdvisorText:} \advComp\\
            \vspace{0.2cm}
            \textbf{\academicAdvisorText:} \advUni\\
            \vspace{0.5cm}
            \textbf{\dateText:} \@date
            
            
        \end{titlepage}
        \makeatother
}

