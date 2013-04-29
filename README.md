% PPUK Documents README
% Dan Turner (d.turner@pirateparty.org.uk)
% 29^th^ April, 2013

Introduction
============

This archive is all of the Pirate Party UK documents accumulated by Dan Turner.

It has some utilities with it, which are detailed in this document.

Writing Minutes
===============

When writing minutes for a meeting, please take the TEMPLATE.md file, and
create a date directory for it under the location directory, for example,

    mkdir -p Leeds/Meetings/2013/09/02
    cp TEMPLATE.md Leeds/Meetings/2013/09/02/minutes.md

Once this is done, feel free to edit ``Leeds/Meeting/s2013/09/02/minutes.md''.

When writing the minutes, please fill out all sections of the template, as
this ensures a consistent format for those reading through the minutes.


Building the Minutes
====================

Dependencies
------------

  * pandoc
  * git
  * make

Process
-------

The minutes should ideally be distributed in PDF form. This makes them easy to
print and read when printed. The raw markdown files can be hosted online, and
easily translated to HTML for display on the web.

To build the PDF files, simply run: 

    make minutes

Whilst writing the minutes, be sure to use 

    git add .
    git commit

regularly to ensure that you have nice save-points to go back to. Once complete
simply ensure that all your changes are committed and run 

    make dist

Bugs
----

None known yet. However, this has not all been tested on any thing other than 
Linux Mint 14 Nadia. I expect it to work on any Linux box.

Future
------

In the future, ``make minutes`` will build HTML and PDF files, and there will 
be separate ``make pdf`` and ``make html`` commands.

The ``make dist`` command would be able to push the minutes to a server, or 
distribute them via email. The distribution method has not yet been decided.
