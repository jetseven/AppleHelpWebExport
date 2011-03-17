# Apple Help Web Export

## Intro

This is a web plugin for VoodooPad. It generates a set of HTML files suitable for use in Apple Help. It assumes you are authoring in Markdown and then applies a CSS template to the markdown headings and lists. Upon export, it produces a search index file needed by Apple Help.

## Usage

Before You Install

* Modify postflight.sh for your product name and help image file
* Modify template.html to include your company name in the copyright
* If you like, modify the CSS style sheet to suit your needs

To Install

* Move the plugin to ~/Library/Application Support/VoodooPad/Web Export Plugins/

To Use

* Author the help in VoodooPad using Markdown
* Export in VoodooPad
    * Export Format: Interpret as Markdown
    * Web export plugin: Apple Help Files

## Contact

Please log issues and requests at the [GitHub project page](https://github.com/jetseven/AppleHelpWebExport)

