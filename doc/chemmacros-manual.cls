% --------------------------------------------------------------------------
% the CHEMFORMULA package
%
%   typeset chemical compounds and reactions
%
% --------------------------------------------------------------------------
% Clemens Niederberger
% --------------------------------------------------------------------------
% https://github.com/cgnieder/chemformula/
% contact@mychemistry.eu
% --------------------------------------------------------------------------
% If you have any ideas, questions, suggestions or bugs to report, please
% feel free to contact me.
% --------------------------------------------------------------------------
% Copyright 2011--2022 Clemens Niederberger
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3c
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2008/05/04 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Clemens Niederberger.
% --------------------------------------------------------------------------
\ProvidesClass{chemmacros-manual}[2022/01/16]

\LoadClass[load-preamble,add-index]{cnltx-doc}
\RequirePackage{imakeidx}

\RequirePackage{chemmacros}
\setcnltx{
  package  = {chemmacros},
  info     = {comprehensive support for typesetting chemistry documents},
  url      = https://github.com/cgnieder/chemmacros ,
  authors  = {Clemens Niederberger[contact@mychemistry.eu], Sonja K.[SonjaK@mein.gmx]} ,
  abstract = {%
    \centering
    \includegraphics{chemmacros-logo.pdf}
    \par
  } ,
  quote-format = \small\biolinumLF ,
  add-cmds = {
     abinitio, activatechemgreekmapping, AddRxnDesc, anti, aq, aqi,
     ba, bond, bridge,
    cd, ch, changechemgreeksymbol, charrow, chcpd, chemabove, chemalpha,
      chembeta, ChemCleverefSupport, chemdelta, chemDelta,
      ChemFancyrefSupport, chemformula@bondlength, chemgamma, ChemModule,
      chemomega, chemphi, chemPhi, chemsetup, chlewis, chname , cip, cis, ch,
      CNMR,
    data, DeclareChemArrow, DeclareChemBond, DeclareChemBondAlias,
      DeclareChemCharge, DeclareChemEqConstant, declarechemgreekmapping,
      DeclareChemIUPAC, DeclareChemIUPACShorthand, DeclareChemLatin,
      DeclareChemNMR, DeclareChemNucleophile, DeclareChemPartialCharge,
      DeclareChemParticle, DeclareChemPhase, DeclareChemReactant,
      DeclareChemReaction, DeclareChemState,
      delm, delp, Delta, dexter, Dfi,
    el, ElPot, endo, entgegen, Enthalpy, enthalpy, entropy,
    fdelm, fdelp, fmch, fminus, fpch, fplus, fscrm, fscrp,
    gas, ghs, ghslistall, ghspic, gibbs, gram,
    hapto, HNMR, Helmholtz, hydrogen,
    IfChemCompatibilityF, IfChemCompatibilityT, IfChemCompatibilityTF, insitu,
      invacuo, isotope, iupac,
    Ka, Kb, Kw,
    laevus, Lfi, listofreactions, lqd,
    makepolymerdelims, mch, mega, meta, mhName,
    NewChemArrow, NewChemBond, NewChemBondAlias,
      NewChemCharge, NewChemEqConstant, newchemgreekmapping, NewChemIUPAC,
      NewChemIUPACShorthand, NewChemLatin, NewChemMacroset, NewChemNMR,
      NewChemNucleophile, NewChemPartialCharge, NewChemParticle, NewChemPhase,
      NewChemReaction, NewChemState,
      newman, nitrogen, NMR, normal, Nu, Nuc,
    orbital, ortho, ox, OX, oxygen,
    para, pch, per, pH, phase, phosphorus, photon, pKa, pKb, pOH, pos,
      positron, Pot, ProvideChemArrow, ProvideChemBond, ProvideChemCharge,
      ProvideChemEqConstant, ProvideChemIUPAC, ProvideChemIUPACShorthand,
      ProvideChemLatin, ProvideChemNMR, ProvideChemNucleophile,
      ProvideChemPartialCharge, ProvideChemParticle, ProvideChemPhase,
      ProvideChemReaction,
      ProvideChemState, prt, printreactants
    Rad, redox, RemoveChemIUPACShorthand, RenewChemArrow, RenewChemBond,
      RenewChemCharge, RenewChemEqConstant, renewchemgreekmapping,
      RenewChemIUPAC, RenewChemIUPACShorthand, RenewChemLatin, RenewChemNMR,
      RenewChemNucleophile, RenewChemPartialCharge, RenewChemParticle,
      RenewChemPhase, RenewChemState,
      reactant, reactants, reactantl, reactantplain,
    Sf, scrm, scrp, second, selectchemgreekmapping, setchemformula,
      ShowChemArrow, ShowChemBond, sld, Sod, solvent, solvents, solventl, state, sulfur, submainreactantplain,
    trans,
    usechemmodule,
    val,
    zusammen
  } ,
  add-silent-cmds = {
    addplot,
    bottomrule,
    cancel, cdot, ce, cee, celsius, centering, chemfig, chemname, clap,
      cmpd, cnsetup, code, color, cstack, cstsetup, cubic, centi,
    DeclareInstance, DeclareSIUnit, definecolor, draw,
    electronvolt, endtikzpicture,
    footnotesize,
    glqq, grqq,
    hertz, hspace,
    includegraphics, intertext, IUPAC,
    joule,
    kelvin, kilo,
    latin, lc, lewis, Lewis, liquid, ltn,
    metre, midrule, milli, mmHg, mole,
    nano, nicefrac, num, numrange,
    ominus, oplus,
    percent, pgfarrowsdeclarealias, pgfarrowsrenewalias,
    renewtagform, rightarrow,
    sample, scriptscriptstyle, setchemfig, sfrac, shade,
      shadedraw, shorthandoff, si, SI, sisetup, square, subsection,
    textcolor, textendash, textsuperscript, tikz, tikzpicture, tiny, toprule,
    upbeta, upeta, upgamma, usetikzlibrary,
    volt, vphantom, vspave,
    xspace,
    z@, z@skip
  } ,
  index-setup = { othercode = \footnotesize , level = \section } ,
  makeindex-setup = { columns = 2 , columnsep = 1em }
}

\RequirePackage{booktabs,array,longtable,collcell}

\RequirePackage{chemfig,cancel,varioref,csquotes}

\RequirePackage[
  a4paper,
  top    = .1\paperheight,
  bottom = .1\paperheight,
  left   = .2\paperwidth,
  right  = .1\paperwidth
]{geometry}

\def\libertine@figurestyle{LF}
\RequirePackage{amsmath}
\undef\lvert \undef\lVert
\undef\rvert \undef\rVert
\RequirePackage[libertine]{newtxmath}
\def\libertine@figurestyle{OsF}

\RequirePackage{acro}
\acsetup{ format  = \scshape }

\RequirePackage{fontawesome}
\RequirePackage{datetime2}
\DTMsetup{useregional=numeric,datesep=/}
\newrobustcmd*\chemmacros@add@version[2]{%
  \csdef{chemmacros@ver@#2}{%
    \DTMdate{#1}%
    \csgdef{chemmacros@ver@#2used}{}%
    \csdef{chemmacros@ver@#2}{\DTMdate{#1}}%
  }%
}

\DeclareInstance{xfrac}{chemformula-text-frac}{text}{
  scale-factor        = 1 ,
  denominator-bot-sep = -.2ex ,
  denominator-format  = \scriptsize #1 ,
  numerator-top-sep   = -.2ex ,
  numerator-format    = \scriptsize #1 ,
  slash-right-kern    = .05em ,
  slash-left-kern     = .05em
}

\newcommand*\chemmacrosversion{\csname c_chemmacros_version_tl\endcsname}

\newrobustcmd*\chemmacros@date[1]{%
  \ifcsdef{chemmacros@ver@#1used}{}{ (\csuse{chemmacros@ver@#1})}}
\newrobustcmd*\chemmacros@ifnew[1]{\ifcsstring{c_chemmacros_version_tl}{#1}}
\newrobustcmd*\chemmacros@NEW{\faStarO\ New}

\renewrobustcmd*\sinceversion[1]{%
  \chemmacros@ifnew{#1}%
    {\cnltx@version@note{\textcolor{red}{\chemmacros@NEW}}}%
    {\cnltx@version@note{\GetTranslation{cnltx-introduced}~#1\chemmacros@date{#1}}}%
}
\renewrobustcmd*\changedversion[1]{%
  \cnltx@version@note{\GetTranslation{cnltx-changed}~#1\chemmacros@date{#1}}%
}

\newnote*\sincechanged[2]{%
  \GetTranslation{cnltx-introduced}~#1\chemmacros@date{#1},
  changed with version~#2\chemmacros@date{#2}\chemmacros@ifnew{#2}{ \chemmacros@NEW}{}%
}

\RenewDocumentEnvironment{commands}{}
  {%
    \cnltx@set@catcode_{12}%
    \let\command\cnltx@command
    \cnltxlist
  }
  {\endcnltxlist}

\renewcommand*\AmS{\hologo{AmS}}
\newcommand*\TikZ{Ti\textit{k}Z}
\newcommand*\tablehead[1]{\textnormal{\color{black}\bfseries#1}}

\providecommand*\XyM{%
  X\kern-.30em
  \smash{\raise.50ex\hbox{\char'7}}%
  \kern-.30em M%
}
\providecommand*\XyMTeX{\XyM\kern-.1em\TeX}
  
\RequirePackage{tcolorbox,xsimverb}
\tcbuselibrary{skins,breakable}
\tcbset{enhanced,enhanced jigsaw}

\usetikzlibrary{calc,positioning,decorations.pathmorphing,patterns}

\newtcolorbox{bewareofthedog}{
  colback  = white ,
  colframe = red ,
  underlay={%
    \path[draw=none]
      (interior.south west)
      rectangle node[red]{\Huge\bfseries !}
      ([xshift=-4mm]interior.north west);
    }%
}

\newtcolorbox{cnltxcode}[1][]{
  boxrule = 1pt ,
  colback = cnltxbg ,
  colframe = cnltx ,
  arc = 5pt ,
  beforeafter skip = .5\baselineskip ,%
  #1%
}

\newcommand*\chemmacros@readoptions[1]{%
  \catcode`\^^M=13
  \chemmacros@read@options{#1}%
}

\begingroup
\catcode`\^^M=13
\gdef\chemmacros@read@options#1#2^^M{%
  \endgroup
  \ifblank{#2}{}{\chemmacros@read@options@#2}%
  #1%
  \XSIMfilewritestart*{\jobname.tmp}%
}%
\endgroup
\def\chemmacros@read@options@[#1]{\pgfqkeys{/cnltx}{#1}}

\RenewDocumentEnvironment{sourcecode}{}
  {%
    \begingroup
    \chemmacros@readoptions{%
      \setlength\cnltx@sidebysidewidth
        {\dimexpr .45\columnwidth -\lst@xleftmargin -\lst@xrightmargin\relax}%
      \expanded{%
        \noexpand\lstset{
          style=cnltx,
          \ifboolexpe{ bool {cnltx@sidebyside} and not bool {cnltx@codeonly} }
            {linewidth=\cnltx@sidebysidewidth,}{}%
          \expandonce\cnltx@local@listings@options
        }%
      }%
      \XSIMgobblechars{2}%
    }%
  }
  {%
    \XSIMfilewritestop
    \cnltxcode[breakable]%
    \lstinputlisting[style=cnltx]{\jobname.tmp}%
    \endcnltxcode
  }

\RenewDocumentEnvironment{example}{}
  {%
    \begingroup
    \chemmacros@readoptions{%
      \setlength\cnltx@sidebysidewidth
        {\dimexpr .45\columnwidth -\lst@xleftmargin -\lst@xrightmargin\relax}%
      \expanded{%
        \noexpand\lstset{
          style=cnltx,
          \ifboolexpe{ bool {cnltx@sidebyside} and not bool {cnltx@codeonly} }
            {linewidth=\cnltx@sidebysidewidth,}{}%
          \expandonce\cnltx@local@listings@options
        }%
      }%
      \XSIMgobblechars{2}%
    }%
  }
  {%
    \XSIMfilewritestop
    \ifbool{cnltx@sidebyside}
      {%
        \cnltxcode
        \noindent
        \minipage[c]{\cnltx@sidebysidewidth}%
          \cnltx@pre@source@hook
          \lstinputlisting[style=cnltx] {\jobname.tmp}%
          \cnltx@after@source@hook
        \endminipage\hfill
        \minipage[c]{\cnltx@sidebysidewidth}%
          \cnltx@pre@example@hook
          \input {\jobname.tmp}%
          \cnltx@after@example@hook
        \endminipage
      }
      {%
        \cnltxcode[breakable]%
        \cnltx@pre@source@hook
        \lstinputlisting{\jobname.tmp}%
        \cnltx@after@source@hook
        \tcblower
        \cnltx@pre@example@hook
        \input {\jobname.tmp}%
        \cnltx@after@example@hook
      }%
    \endcnltxcode
  }

\newcommand*\iupaccs[3][]{%
  \command{#2}[\quad\iupac{\csuse{#2}}]
    #3\ifblank{#1}{}{\ifblank{#3}{}{ }An alias for this command is \cs{#1}.}%
}

\newidxcmd\chemmodule{\code{#1}}[ (module)]
\newidxcmd\tikzdecoration{\code{#1}}[ (\TikZ\ decoration)]
\AtEndPreamble{%
  \pdfstringdefDisableCommands{%
    \def\chemmodule*#1{\textquotedblleft#1\textquotedblright}%
  }%
}
\newidxcmd\sym{\code{#1}}[ (symbol)]

\def\cnltx@bash@listings@style{
  language         = bash,
  basicstyle       = {\sourceformat\color{black}},
  xleftmargin      = 1em,
  numbersep        = .75em,
  gobble           = \cnltx@gobble ,
  columns          = fullflexible,
  literate         =
    {ä}{{\"a}}1
    {ö}{{\"o}}1
    {ü}{{\"u}}1
    {Ä}{{\"A}}1
    {Ö}{{\"O}}1
    {Ü}{{\"U}}1
    {ß}{{\ss}}1 ,
  breaklines       = true,
  keepspaces       = true,
  breakindent      = 1em,
  commentstyle     = \color{comment},
  keywordstyle     = \color{black}\bfseries ,
  stringstyle      = \color{black} ,
  showstringspaces = false ,
  morekeywords     = texdoc
}

\cnltx@expandargs(nx)\lstdefinestyle
  {bash}
  {\expandonce\cnltx@bash@listings@style}

\newcommand*\prompt{}
\patchcmd\lst@NewLine
  {\hbox{}}% search
  {\hbox{}\prompt}% replace
  {}% success
  {}% failure
\newsourcecodeenv[
  code-only,
  sourcecode-options = {
    style = bash ,
    deleteindex = [5][keyword5] ,
    deleteindex = [6][keyword6]
  },
  pre-code           = \def\prompt{\textasciitilde\space\$\space}  
]{lbash}

\newrobustcmd*\explcsformat[1]{%
  \code{\textbackslash\textcolor{cs}{\detokenize{#1}}}%
}
\newidxcmd\explcs{\explcsformat{#1}}[ (expl3)]

\cnltx@deflistitem{\cnltx@explcommand}{\explcs}
\renewenvironment{commands}
  {%
    \let\command\cnltx@command
    \let\explcommand\cnltx@explcommand
    \cnltxlist
  }
  {\endcnltxlist}
\newenvironment{tikzcode}
  {%
    \def\arrowtip{\@cnltx@option@item\code}%
    \cnltxlist
  }
  {\endcnltxlist}

\newrobustcmd*\showenv[1]{\beginenv*\code{\{}\env{#1}\code{\}}}

\newcommand*\TF{\textcolor{red}{\uline{\code{\textcolor{cs}{\textit{TF}}}}}}

\RequirePackage[
  backend=biber,
  style=cnltx,
  sortlocale=en_US,
  indexing=cite]{biblatex}
\RequirePackage{csquotes,varioref}
\defbibheading{bibliography}{\section{References}}

\RequirePackage[biblatex]{embrac}
\ChangeEmph{[}[,.02em]{]}[.055em,-.08em]
\ChangeEmph{(}[-.01em,.04em]{)}[.04em,-.05em]

\ExplSyntaxOn
\cs_new_protected:Npn \chemboldchecks #1
  {
    \seq_set_map:NNn \l_tmpa_seq \l__chemmacros_if_bf_seq { \code {##1} }
    \seq_use:Nnnn \l_tmpa_seq {,~} {,~} {~#1~}
  }
\ExplSyntaxOff

\DeclareAcronym{ghs}{
  short     = ghs ,
  long      = Globally Harmonized System of Classification and Labelling of
    Chemicals ,
  pdfstring = GHS ,
  short-acc = GHS
}
\DeclareAcronym{eu}{
  short     = eu ,
  long      = European Union ,
  pdfstring = EU ,
  short-acc = EU
}
\DeclareAcronym{iupac}{
  short     = iupac ,
  long      = International Union of Pure and Applied Chemistry ,
  pdfstring = IUPAC ,
  short-acc = IUPAC
}
\DeclareAcronym{UN}{
  short     = un ,
  long      = United Nations ,
  pdfstring = UN ,
  short-acc = UN
}
\DeclareAcronym{dvi}{
  short     = dvi ,
  long      = device independent file format ,
  pdfstring = DVI ,
  short-acc = DVI
}
\DeclareAcronym{pdf}{
  short     = pdf ,
  long      = portable document file ,
  pdfstring = PDF ,
  short-acc = PDF
}
\DeclareAcronym{id}{
  short     = id ,
  long      = identification string ,
  pdfstring = ID ,
  short-acc = ID
}

\chemsetup{
  greek = newtx ,
  formula = chemformula ,
  chemformula/format = \libertineLF ,
  reactants/acronym-support = acro ,
  reactants/printreactants-style = longtable
}

\sisetup{
  detect-mode=false,
  mode=text,
  text-font-command=\libertineLF
}

\DeclareChemReactant{nBuLi}{name={\iupac{\textit{n}=butyllithium}}}
\DeclareChemReactant{Br2benzene}{name={\iupac{1,4=di|bromo|benzene}}}
\DeclareChemReactant{HBr}{name={\ch{HBr\aq}}}
\DeclareChemReactant{dcm}{name={dichloromethane}, short={DCM}}
\DeclareChemReactant{thf}{name={tetrahydrofuran}}
\DeclareChemReactant{H2SO4}{name={\ch{H2SO4}}}
\DeclareChemReactant{dichloropentane}{name={\iupac{2,4-di|chloro|pentane}}}

\chemmacros@add@version{2012-01-28}{3.0}
\chemmacros@add@version{2012-01-30}{3.0a}
\chemmacros@add@version{2012-02-03}{3.0b}
\chemmacros@add@version{2012-02-05}{3.0c}
\chemmacros@add@version{2012-02-10}{3.0d}
\chemmacros@add@version{2012-02-19}{3.1}
\chemmacros@add@version{2012-02-26}{3.1a}
\chemmacros@add@version{2012-03-03}{3.1b}
\chemmacros@add@version{2012-03-14}{3.1c}
\chemmacros@add@version{2012-03-20}{3.2}
\chemmacros@add@version{2012-05-07}{3.3}
\chemmacros@add@version{2012-05-13}{3.3a}
\chemmacros@add@version{2012-05-18}{3.3b}
\chemmacros@add@version{2012-05-18}{3.3c}
\chemmacros@add@version{2012-07-24}{3.3d}
\chemmacros@add@version{2012-08-21}{3.3e}
\chemmacros@add@version{2012-09-11}{3.4}
\chemmacros@add@version{2012-10-03}{3.4a}
\chemmacros@add@version{2013-01-04}{3.4b}
\chemmacros@add@version{2013-01-28}{3.5}
\chemmacros@add@version{2013-02-19}{3.5a}
\chemmacros@add@version{2013-02-26}{3.6}
\chemmacros@add@version{2013-02-27}{3.6a}
\chemmacros@add@version{2013-04-19}{3.6b}
\chemmacros@add@version{2013-07-06}{4.0}
\chemmacros@add@version{2013-08-07}{4.0a}
\chemmacros@add@version{2013-08-24}{4.1}
\chemmacros@add@version{2013-10-28}{4.2}
\chemmacros@add@version{2013-10-31}{4.2a}
\chemmacros@add@version{2013-11-04}{4.2b}
\chemmacros@add@version{2013-11-20}{4.2c}
\chemmacros@add@version{2013-12-15}{4.2d}
\chemmacros@add@version{2014-01-09}{4.2e}
\chemmacros@add@version{2014-01-24}{4.3}
\chemmacros@add@version{2014-01-29}{4.4}
\chemmacros@add@version{2014-04-08}{4.5}
\chemmacros@add@version{2014-06-30}{4.5a}
\chemmacros@add@version{2014-08-08}{4.6}
\chemmacros@add@version{2015-02-08}{4.7}
\chemmacros@add@version{2015-09-11}{5.0}
\chemmacros@add@version{2015-09-23}{5.1}
\chemmacros@add@version{2015-10-14}{5.2}
\chemmacros@add@version{2016-01-13}{5.3}
\chemmacros@add@version{2016-01-23}{5.3a}
\chemmacros@add@version{2016-02-10}{5.4}
\chemmacros@add@version{2016-03-08}{5.5}
\chemmacros@add@version{2016-05-02}{5.6}
\chemmacros@add@version{2016-05-04}{5.6a}
\chemmacros@add@version{2016-06-07}{5.7}
\chemmacros@add@version{2016-06-08}{5.7a}
\chemmacros@add@version{2016-10-05}{5.7b}
\chemmacros@add@version{2016-12-28}{5.7c}
\chemmacros@add@version{2017-04-17}{5.8}
\chemmacros@add@version{2017-06-13}{5.8a}
\chemmacros@add@version{2017-08-28}{5.8b}
\chemmacros@add@version{2018-03-02}{5.8c}
\chemmacros@add@version{2019-09-23}{5.8d}
\chemmacros@add@version{2019-09-27}{5.8e}
\chemmacros@add@version{2019-09-30}{5.8f}
\chemmacros@add@version{2019-11-17}{5.9}
\chemmacros@add@version{2020-01-16}{5.9a}
\chemmacros@add@version{2020-02-03}{5.10}
\chemmacros@add@version{2020-03-07}{5.11}
\chemmacros@add@version{2020-11-21}{5.11a}
\chemmacros@add@version{2020-11-29}{5.12}
\chemmacros@add@version{2022-01-16}{6.0}

\endinput
