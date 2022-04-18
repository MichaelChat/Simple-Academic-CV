\ProvidesClass{simple_academic_cv}[2022/04/13 Simple CV class]
\LoadClass[10pt,a4paper]{article}

\RequirePackage{titlesec}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\RequirePackage{xparse}
\RequirePackage{ifthen}
\RequirePackage[english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage{config_package}

\pagenumbering{gobble}

\newcommand{\name}{%
	\centerline{\Huge{\myname}}
}

\newcommand{\contact}{%
	\noindent
	\mystreet { \large\textperiodcentered } \mycity { \large\textperiodcentered } \mycountry
}

\newcommand{\email}{%
	\noindent
	{\faEnvelopeSquare \quad \myemail}
}

\newcommand{\linkedin}{%
	\noindent
	{\faLinkedinSquare \quad \mylinkedin}
}

\newcommand{\github}{%
	\noindent
	{\faGithubSquare \quad \mygithub}
}

\titleformat{\section}         
{\bfseries\large\scshape\raggedright}
{}{0em}
{}
[\titlerule]

\titleformat{\subsection}
{\normalsize\raggedright}
{}{0em}
{}

\newcommand{\educationSec}[7]{%
	\subsection[#1]{%
		\begin{tabular}{@{}lp{.8\linewidth}}
			#1 	& \textbf{#2}, \textit{#3}, #4 \ifthenelse{\equal{#5}{}}{}{, #5}%
			\ifthenelse{\equal{#6}{}}{}{\\& #6}%
			\ifthenelse{\equal{#7}{}}{}{\\& #7}%
		\end{tabular}%
	}%
}

\newcommand{\workSec}[5]{%
	\subsection[#1]{%
		\begin{tabular}{@{}lp{.8\linewidth}}
			#1 	& \textbf{#2}, \textit{#3}, #4\\
				& #5
		\end{tabular}%
	}%
}

\newcommand{\projectSec}[5]{%
	\subsection[#1]{%
		\begin{tabular}{@{}lp{.8\linewidth}}
			#1 	& \textbf{#2}, \textit{#3}, #4\\
				& #5
		\end{tabular}%
	}%
}

\newcommand{\workitems}[3]{%
	\vspace{-5mm}
	\begin{itemize}[noitemsep]
		\item #1
		\item #2
		\item #3
	\end{itemize}%
}
