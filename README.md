# ascii.js

A web-font-based rendering engine for displaying ANSI/ASCII artwork on the web as text

* [Usage](#usage)
* [Different fonts](#different-fonts)
  * [Font credits](#font-credits)
* [ANSI support](#ansi-support)
* [Demonstration](#demonstration)

## Usage

Run the included `build.sh` script to generate the `index.html` file for the gallery.

## Different fonts

Based on the parent folder of the ASCII file being rendered, ascii.js will decide which font to use.

* `80x50/` - These files will be rendered with the 80x50 DOS font
* `dos/` - These files will be rendered with the 80x25 DOS font
* `amiga/` - These files will be rendered with the Amiga Topaz 500 font

### Font credits

* The *Topaz 500* font used for Amiga artwork comes from [TrueSchool](http://trueschool.se)
* The *80x25 DOS* and *80x50 DOS* fonts used for CP437 artwork come from [ApolloSoft](http://www.apollosoft.de/ASCII/indexen.htm)

## ANSI support

ANSI color/command codes are *tenuously* supported. Older ANSI works may be using cursor tricks that are difficult to replicate in a static fashion. If you have problems with a particular piece, try reloading it in a recent version of [PabloDraw](http://picoe.ca) and saving a new copy.

* 8 background colors
* 16 foreground colors
* Minimal [CSI code](https://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes) support (mainly CUD/CUF)
* Doctored font files for displaying extended CP437 characters (ex. 1-31 and 127)

## Demonstration

If you'd like to see a live demonstration, or you have no idea what ASCII art is, [visit my gallery](http://oddnetwork.org/ascii/).
