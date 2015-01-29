% ---------------------------------------------------------------------------------
% sticky_notulen.sty
%   LaTeX template voor notulen van Studievereniging Sticky.
%   2015-01-29 (C) Laurens Duijvesteijn l.duijvesteijn (at) gmail.com
% ---------------------------------------------------------------------------------

%
% Identificatie
%
%   De volgende regels geven deze klasse een naam, een versie en de laatste datum
%   van modificatie. Verder worden hier beperkingen opgelegd aan het inputformaat.
%   Deze klasse maakt gebruik van LaTeX macros en is daarmee niet geschikt voor
%   gebruik met TeX installaties waar deze ontbreken. Elke standaard-distributie
%   zou OK moeten zijn.
%
\ProvidesClass{sticky_notulen}[2015/01/29 versie 0.1]
\NeedsTeXFormat{LaTeX2e}

%
% Variabelen
%
%   Deze class definieert variabelen voor de naam van het orgaan (alias: commssie)
%   leden van dit orgaan, afwezigen, tevens aanwezigen en de datum.
%
%   De volgende macros kunnen worden gebruikt voor het instellen van deze
%   variabelen:
%
%     \orgaan{<naam>}            - De naam van het orgaan wat vergadert.
%       alias: \commssie{}
%
%     \leden{[<naam>,]}          - Leden van het orgaan.
%
%     \absent{[<naam>,]}         - Afwezige leden.
%
%     \aanwezig{[<naam>,]}       - Andere aanwezigen.
%
%     \datum{<datum>}            - Datum van de vergadering.
%

\global\let\@orgaan\@empty
\newcommand{\definieerorgaan}[1]{\def\@orgaan{#1}}
\let\orgaan\definieerorgaan %
\let\commissie\definieerorgaan %
\newcommand{\toon@orgaan}{\@orgaan}

\global\let\@leden\@empty
\newcommand{\definieerleden}[1]{\def\@leden{#1}}
\let\leden\definieerleden %
\newcommand{\toon@leden}{\@leden}

\global\let\@absent\@empty
\newcommand{\definieerabsent}[1]{\def\@absent{#1}}
\let\absent\definieerabsent %
\newcommand{\toon@absent}{\@absent}

\global\let\@aanwezig\@empty
\newcommand{\definieeraanwezig}[1]{\def\@aanwezig{#1}}
\let\aanwezig\definieeraanwezig %
\newcommand{\toon@aanwezig}{\@aanwezig}

\global\let\@datum\@empty
\newcommand{\definieerdatum}[1]{\def\@datum{#1}}
\let\datum\definieerdatum %
\newcommand{\toon@datum}{\@datum}

%
% Opties inlezen
%
%   De volgende regel leest de opties in die aan de klasse worden meegegeven en
%   geeft deze door aan `article`. Als er een bestand <optie>.leden wordt gevonden
%   wordt de code in dit bestand geladen.
%
\DeclareOption*{\InputIfFileExists{\CurrentOption.leden}{}{%
  \PassOptionsToClass{\CurrentOption}{article}}}

%
% Opties uitvoeren en `article` inladen.
%
%   Opties worden ingeladen met de \ProcessOptions macro. \relax, ook wel no-op,
%   is een operatie die niets doet. Dit is af en toe nodig om een operatie te geven
%   waar de syntax van TeX dit verwacht, maar waar het niet wenselijk is om iets
%   uit te voeren.
%
\ProcessOptions \relax
\LoadClass{article}

% vim: ft=tex

