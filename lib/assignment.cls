\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[2023/11/7 v1.0]

% print debug info to logfile
\typeout{Global options before any option parsing.}
\typeout{classoptions: \@classoptionslist}
\typeout{unused classoptions: \@unusedoptionlist}

% pass options to scrartcl
\PassOptionsToClass{bibliography=totoc,numbers=noenddot}{scrartcl}
% pass tumarticle class options down to scrartcl
\PassOptionsToClass{\@classoptionslist}{scrartcl}
\LoadClass{scrartcl}

% print debug info to logfile
\typeout{Global options after scrartcl option parsing.}
\typeout{classoptions: \@classoptionslist}
\typeout{unused classoptions: \@unusedoptionlist}

% import packages
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{color, xcolor}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage}
\RequirePackage{adjustbox}
\RequirePackage{frontmatter}
\RequirePackage{tumheaders}


% Set default PDF metadata
\AtBeginDocument{
  \def\@adparl@pdftitle@{\@title\ifdefempty{\@subtitle}{}{~-~\@subtitle}}
  \hypersetup{
    pdftitle = {\@adparl@pdftitle@},
    pdfauthor = {\assignmentAuthors},
    pdfsubject = {\@subject},
    % pdfkeywords = {},
    pdfcreator = {\assignmentAuthors}
  }
}

% open bookmarks tree, use SinglePage layout
\hypersetup{
  bookmarksnumbered = true,
  bookmarksopen = true,
  bookmarksopenlevel = 1,
  pdfpagemode=UseOutlines,
  pdfpagelayout=SinglePage,
}