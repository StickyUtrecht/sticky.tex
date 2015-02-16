% ---------------------------------------------------------------------------------
% sticky_minutes.cls
%   LaTeX template for minutes for Study Association Sticky.
%
%   (C) 2015 Laurens Duijvesteijn <l.duijvesteijn@gmail.com>
%
%   MIT licensed.
%
% ---------------------------------------------------------------------------------

%
% Identification
%
%   The next lines give this class its name, a version and the date of last
%   modification. It also restricts the input format to LaTex2e.
%
\ProvidesClass{sticky_minutes}[2015/01/29 versie 0.1]
\NeedsTeXFormat{LaTeX2e}

%
% Typography and options
%
%   This class depends on the typographical configuration as defined in the style
%   `sticky_typography.cls`.
%
%   The next line reads the options given to the class. If a file is named
%   `<option>.members` is found, this file is loaded. This is intended for use as
%   `<committee_name>.members` to save the members of a certain committee for reuse.
%
%   After reading in the options, they are processed and the article class is loaded.
%   `\relax` is a no-op command, which is used in place where LaTeX expects a macro,
%   but none is required.
%
\DeclareOption*{\InputIfFileExists{\CurrentOption.leden}{}{%
  \PassOptionsToClass{\CurrentOption}{sticky_typography}}}

\ProcessOptions \relax
\LoadClass{sticky_typography}

%
% DeclareAuthorVariable interface
%
%   Here an abstraction is defined for the declaration of author variables. This
%   consists of the following commands:
%
%     \DeclareAuthorVariable*{}   - define a mandatory author variable.
%     \DeclareAuthorVariable{}    - define an optional author variable.
%
%   Credits: tex.se.com user "egreg" https://tex.stackexchange.com/users/4427/egreg
%   in answer http://tex.stackexchange.com/a/93912
%
%   Content in this subsection is CC-BY-SA 3.0 unported

% This branches between the normal and starred command.
\newcommand{\DeclareAuthorVariable}{%
  \@ifstar{\vars@DeclareAuthorVariable{\vars@mandatory@var}}
          {\vars@DeclareAuthorVariable{\vars@optional@var}}%
}

% The main command; the internal version of \foo is \vars@foo. The macro \vars@foo
% is initialized to give an error or an info message when used, so if the user
% doesn't provide a value for a mandatory variable, we'll catch the issue.
\newcommand{\vars@DeclareAuthorVariable}[2]{%
  \@namedef{vars@#2}{#1{#2}}%
  \@namedef{#2}##1{\@namedef{vars@#2}{##1}}%
}
% The error and info messages
\newcommand{\vars@mandatory@var}[1]{%
  \ClassError{vars}
    {Missing value for mandatory variable
     \expandafter\string\csname#1\endcsname}
    {You have to provide a value with
     \expandafter\string\csname#1\endcsname{...}}%
}
\newcommand{\vars@optional@var}[1]{%
  \ClassInfo{vars}
    {Missing value for optional variable
     \expandafter\string\csname#1\endcsname}%
}

%   End of CC-BY-SA 3.0 unported code

%
% AuthorVariable declarations
%
%   This class exposes the following variables to authors for use in the template.
%
%   \committee{}                 - The name of the committee
%   \members{}                   - The members of the committee
%   \date{}                      - Date of the meeting
%   \absent{} (optional)         - Absentees, if any.
%   \alsopresent{} (optional)    - People also present, if any.
%
% TODO: define the author interface

%
% Formatting
%
%   Here the actual formatting of the document is defined. The standard header and
%   footer are removed from the first page, and the next pages get standard ones.
%
% TODO: create the class formatting
%

% vim: ft=tex
