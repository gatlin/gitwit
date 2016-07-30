gitwit
===

A little slideshow built with [landslide][landslide] to explain git in a
jocular parlance.

[View it online!](http://niltag.net/gitwit)

Building the presentation
---

0. I probably abuse virtualenv but anyway, I first set one of those up:

    $> virtualenv ve
    $> . ve/bin/activate

   *`ve` is already in `.gitignore`! How wonderful!*

1. Ensure [landslide][landslide] is installed:

    $> pip install -r requirements.txt

2. To rebuild the presentation while editing, use `make build`. When you're
   ready to publish it somewhere, use `make publish`.

   The distinction is: `publish` generates a file with relative URLs as well as
   a new `theme` directory to which the file refers; `build` does not.

3. Copy `index.html`, `img`, and `theme` somewhere and condescend to
   potentially tens of people *simultaneously* about something that has a very
   complete `man` page.


[landslide]: https://github.com/adamzap/landslide
