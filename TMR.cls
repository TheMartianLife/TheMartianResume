%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TMR Class File
% Author: Marina Rose "Mars" Geldard
% http://github.com/TheMartianLife/Resume

% Available for others' use under:
% 

% Last Updated: 18/09/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Class identification & inheritance/delegation
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TMR}[2017/09/17 v0 TheMartianResume Package]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}


% Gain functionality from third party packages
\RequirePackage{geometry}
\RequirePackage{import}
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage{xcolor}
\RequirePackage{fontawesome}


% Set up document to start
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\pagestyle{fancy}


% Get details from input
\newcommand*{\documenttitle}[1]{\def\@documenttitle{#1}}
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}
\newcommand*{\greeting}[1]{\def\@greeting{#1}}
\newcommand*{\farewell}[1]{\def\@farewell{#1}}
\newcommand*{\attached}[1]{\def\@attached{#1}}
\newcommand*{\recipient}[2]{\def\@recipientname{#1}\def\@recipientaddress{#2}}


% Define styles for text
\newcommand*{\pipe}{~~\textbar~~}
\newcommand*{\nametext}[1]{\fontsize{48pt}{1em}\textbf{#1}}
\newcommand*{\foottext}[1]{\fontsize{9pt}{1em}\textsc{#1}}
\newcommand*{\accenttext}[1]{\fontsize{11pt}{1em}\color{darkgray}\textit{#1}}
\newcommand*{\titletext}[1]{\fontsize{11pt}{1em}\color{black}\textbf{#1}}
\newcommand*{\subtitletext}[1]{\fontsize{9pt}{1em}\color{darkgray}\textnormal{#1}}
\newcommand*{\bodytext}{\color{darkgray}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THE HIGH-LEVEL DOCUMENT ENVIRONMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Runs pre- & post-commands for coverletter doc
\newenvironment{coverletter}{
	
	% Construct topmatter
	\tmrheader
	\vspace{-2mm}\noindent\rule{\textwidth}{0.4pt}
	\tmrtitle
	
	% Set text style for letter body
	\bodytext
}{
	% Construct bottom matter
	\tmrclosing
}


% Runs pre- & post-commands for resume doc
\newenvironment{resume}{

	% Construct topmatter
	\tmrheader
}{
	% Construct bottom matter
	\tmrfooter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THE LOWER-LEVEL DOCUMENT COMPONENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Makes page header from details
\newcommand*{\tmrheader}{
	\begin{center}
	\nametext{\@name}\\
	\vspace{1mm}\accenttext{\faicon{map-marker} \@address\quad\faicon{mobile} \@phone}\\
	\subtitletext{
		\faicon{envelope} \@email \pipe
		\faicon{home} \@homepage \pipe
		\faicon{github-square} \@github \pipe
		\faicon{linkedin-square} \@linkedin \pipe
		\faicon{twitter} \@twitter
	}	
	\end{center}
}


% Makes three-column page footer
\newcommand*{\tmrfooter}{

	% Set left field to today's date
	\fancyfoot[L]{
		\foottext{\today}
	}
	
	% Set middle field to name, document type
	\fancyfoot[C]{
		\foottext{\@name~~~·~~~R{\'e}sum{\'e}}
	}	
	
	% Set right field to page number
	\fancyfoot[R]{
		\foottext{\thepage}
	}	

}


% Makes recipient section from details & dates letter
\newcommand*{\tmrtitle}{ 
	
	% Use two-column table to separate letter date
  	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} lr}
    	\titletext{\@recipientname} & \accenttext{\today}
  	\end{tabular*}
  	
  	% Return to normal left-aligned text
	\@recipientaddress \\\\\\\\
	\bodytext\@greeting,
}


% Signs off letter
\newcommand*{\tmrclosing}{
	
	\vspace{8mm}
	\@farewell, \\\\ \titletext{\@name} \\\\
	\accenttext{Attached: \@attached	}

}
