READ ME:
*********

This software is developed and copyrighted by HIOX Softwares.
This is given under The GNU General Public License (GPL).
This version is HSTOPWATCH 1.0


Features:
----------
a) You can use this javascript stopwatch timer for any event.
b) You can refresh the stopwatch using Reset button.
c) It is easy to use.


Downloads:
----------
Please visit our site http://www.hscripts.com and do the download


Installation:
--------------
Please take 5 minutes time and read installation instructions carefully and
completely! This will ensure a proper and easy installation 

Extracting files:
a) Unzip the file hstopwatch.zip to extract the files to the folder
hstopwatch/hstopwatch 
b) You will get the files hstopwatch/stopwatch-without-lap.js, hstopwatch
/README

Embedding the code:

a) First copy the following code into the “Head” tag of your file.

< !-- Script by hscripts.com -->
<script src="hstopwatch/stopwatch-without-lap.js">
</script>
<body onload='load();'>
<table align=center>
<div align=center>&nbsp;Stopwatch-without-lap</div>
<tr><td><input type='text' id='disp' maxlength=12 readonly /></td></tr>
<tr><td><button type='button' onclick='ss()' id='butt'>Start/Stop</button>
<button type='button' onclick='r()' id='butt2'>Reset</button>
</td></tr>
</table>
</body>
< !-- Script by hscripts.com -->

b)Here <body onload="load()"> is used in order to perform stopwatch while page
is loaded.
c)Call "load()" function using onload event in your page.

d) Now copy the following CSS code into the “Head” tag of your file

<style type='text/css'>
	#disp 
	{
	background-color:black;
	font-size: 1.75em;
	color: white;
	width: 6em;
	font-family: "Times New Roman";
	padding: 0.15em;
	border-right-width:0;
	}
	#butt
	{
	font-size: 1em;
	width: 5em;
	font-family: "Times New Roman";
	}
	#butt2 
	{
	font-size: 1em;
	width: 5em;
	font-family: "Times New Roman";
	}
</style>


Releases:
----------
Release Date hstopwatch 1.0 : 23-12-2007

On any suggestions mail to us at support@hscripts.com

Visit us at http://www.hscripts.com
Visit us at http://www.hioxindia.com
