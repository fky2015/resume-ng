\RequirePackage{expl3,l3keys2e}
\ProvidesExplClass{resume}
{2022-12-26}{0.1.0}{A Resume Class by Feng Kaiyu}

\LoadClass[zihao=5,autoindent=0.5em]{ctexbook}

\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
% Remove the default header and footer
\pagestyle{empty}

\geometry{a4paper,margin=1cm}

\seq_new:N \g__resume_contacts_seq
\tl_new:N \g__resume_title_name_tl


%%% Global Settings %%%

% No page number.
\pagenumbering{gobble}

% Set the style of section title.
\ctexset{
  section = {
    nameformat = {},
    number = {},
    format = \noindent \zihao{4} \heiti \__resume_section_title_format:n,
    indent = -1em,
    afterskip = 0.5em,
    beforeskip = 0.75em,
  },
}

% Set the style of list.
\setlist{
  labelsep=2pt,
  labelwidth=5pt,
  leftmargin=1.3em,
  itemsep=0em,
  parsep=0.25em,
  topsep=0em,
}

% Set the line spacing.
\linespread{1.1}

%%% User Commands %%%

% Predefined commands.
\cs_new:Npn \__resume_append_concat:n #1
{
  \seq_put_right:Nn \g__resume_contacts_seq {#1}
}

% Predefined commands.
\cs_new:Npn \__resume_section_title_format:n #1
{#1 \vspace{3pt} \hrule}


\NewDocumentCommand{\ResumeContact}{m}
{
  \__resume_append_concat:n {#1}
}

\NewDocumentCommand{\ResumeContacts}{m}
{
  \seq_set_from_clist:Nn \l__input_seq:N {#1}
  \seq_map_inline:Nn \l__input_seq:N
  {
    \__resume_append_concat:n {##1}
  }
}

\NewDocumentCommand{\ResumeName}{m}
{
  \tl_set:Nn \g__resume_title_name_tl {#1}
}

\NewDocumentCommand{\ResumeTitle}{}
{
  \begin{center}
    \zihao{-2} \heiti \g__resume_title_name_tl
  \end{center}
  \begin{center}
    \seq_use:Nnnn \g__resume_contacts_seq {~|~} {~|~} {~|~}
  \end{center}
}

\NewDocumentCommand{\ResumeItem}{mo}
{
  {
    \zihao{-4}
    \par 
    \noindent
    #1
    \hfill
    \IfValueT{#2}{
      #2
    }
    \par
  }
}

\endinput
