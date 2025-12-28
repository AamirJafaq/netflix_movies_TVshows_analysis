\documentclass[11pt,a4paper]{article}

\usepackage[margin=1in]{geometry}
\usepackage{setspace}
\usepackage{hyperref}
\usepackage{longtable}
\usepackage{enumitem}

\setstretch{1.2}

\title{\textbf{Netflix Data Analysis Using SQL}}
\author{Aamir Khan \\ University of Aveiro}
\date{}

\begin{document}

\maketitle

\section*{Project Overview}
This project presents an exploratory and business-oriented analysis of the \textbf{Netflix Movies and TV Shows dataset}.
The primary objective is to extract meaningful insights using \textbf{SQL}, supported by \textbf{Python-based data cleaning}.

The analysis focuses on:
\begin{itemize}[noitemsep]
    \item Content distribution across Netflix
    \item Trends in content addition over time
    \item Movie duration characteristics
    \item Country-wise and rating-wise patterns
\end{itemize}

\section*{Dataset Description}
The dataset contains metadata related to Netflix content. Key attributes include:

\begin{longtable}{ll}
\textbf{Column} & \textbf{Description} \\
\hline
show\_id & Unique identifier for each title \\
type & Movie or TV Show \\
title & Name of the content \\
director & Director of the title \\
cast & Cast members \\
country & Country of production \\
date\_added & Date when added to Netflix \\
release\_year & Year of release \\
rating & Content rating (e.g., PG, TV-MA) \\
duration & Duration in minutes or number of seasons \\
listed\_in & Genre or category \\
description & Short description of the content \\
\end{longtable}

\section*{Business Objectives}
The main objectives of this project are:
\begin{itemize}[noitemsep]
    \item To analyze Netflix’s content strategy
    \item To identify temporal trends in content releases
    \item To evaluate movie duration patterns
    \item To answer business-driven questions using SQL
\end{itemize}

\section*{Analysis Approach}
The analysis follows a two-stage pipeline:

\subsection*{1. Data Cleaning and Preprocessing (Python)}
\begin{itemize}[noitemsep]
    \item Loaded the raw dataset into Python
    \item Handled missing and inconsistent values
    \item Standardized date formats and categorical fields
    \item Cleaned and structured duration-related columns
    \item Prepared an analysis-ready dataset
\end{itemize}

\subsection*{2. SQL-Based Analysis}
\begin{itemize}[noitemsep]
    \item Imported the cleaned dataset into a SQL database
    \item Created structured tables
    \item Executed SQL queries to answer business questions
    \item Applied filtering, aggregation, and date functions
\end{itemize}

This hybrid approach leverages Python for preprocessing and SQL for efficient analytical querying.

\section*{Key Business Questions}
The analysis addresses the following questions:
\begin{enumerate}
    \item What is the total number of Movies and TV Shows on Netflix?
    \item Which movies have the longest duration?
    \item What content has been added in the last five years?
    \item How is content distributed by release year?
    \item Which content ratings are most common?
    \item Which countries contribute the most content?
\end{enumerate}

\section*{Tools and Technologies}
\begin{itemize}[noitemsep]
    \item Python (Data Cleaning and Preprocessing)
    \item SQL (MySQL / PostgreSQL compatible)
    \item Relational Databases
    \item Data Analysis Techniques
\end{itemize}

\section*{Key Insights}
\begin{itemize}[noitemsep]
    \item Netflix hosts a higher number of movies than TV shows
    \item Most movies fall within a standard duration range
    \item A significant portion of content was added in recent years
    \item Content production is concentrated in a few major countries
\end{itemize}

\section*{How to Run the Project}
\begin{enumerate}
    \item Clean the dataset using Python
    \item Create a SQL database
    \item Import the cleaned data into the database
    \item Execute queries from \texttt{SQLnetflix\_analysis.sql}
\end{enumerate}

\section*{Repository Structure}
\begin{verbatim}
Netflix-SQL-Analysis/
|
|-- SQLnetflix_analysis.sql
|-- README.tex
\end{verbatim}

\section*{Future Enhancements}
\begin{itemize}[noitemsep]
    \item Add dashboards using Power BI or Tableau
    \item Perform genre-level trend analysis
    \item Extend analysis using Python-SQL integration
    \item Automate reporting and insights generation
\end{itemize}

\section*{Author}
\textbf{Aamir Khan} \\
Graduate Research Assistant \\
University of Aveiro

\end{document}
