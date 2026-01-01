# Garmin English Time

A minimalist, elegant, nerdy Garmin Connect IQ watch face that displays the current time as English words.

![English Time](resources/graphics/EnglishTimeHero-small.png)

Available from [Garmin Connect IQ Developer portal](https://apps.garmin.com/apps/edae124d-82cc-4572-9ed4-582def4df31b).

> **Note**  
> English Time is part of a [collection of unconventional Garmin watch faces](https://github.com/wkusnierczyk/garmin-watch-faces). It has been developed for fun, as a proof of concept, and as a learning experience.
> It is shared _as is_ as an open source project, with no commitment to long term maintenance and further feature development.
>
> Please use [issues](https://github.com/wkusnierczyk/garmin-english-time/issues) to provide bug reports or feature requests.  
> Please use [discussions](https://github.com/wkusnierczyk/garmin-english-time/discussions) for any other comments.
>
> All feedback is wholeheartedly welcome.

## Contents

* [English time](#english-time)
* [Features](#features)
* [Fonts](#fonts)
* [Build, test, deploy](#build-test-deploy)

## English time

The English Time watch face uses English words to show the time in two rows:
* First row: hour, in larger, bold font.
* Second row: minutes, in smaller, regular, colored font.

The English words include:
* all numerals from `one` to `fifty nine`;
* `o'clock` to indicate a full hour (zero minutes), as in `one o'clock`;
* `oh` to indicate unit minutes (no tens), as in `one oh five`.

## Features

The English Time watch face supports the following features:

|Screenshot|Description|
|-|:-|
|![](resources/graphics/08-28.png)|**12-hour time**<br /> 12-hour time is displayed as English words, without the AM/PM indicator. Hour word in a large, bold, white font in at the center, and minutes word(s) in a smaller, lighter, orange font below.|
|![](resources/graphics/01-01.png)|**Unit minutes**<br /> Unit minutes (minutes below 10) are displayed with a leading `oh` word.|
|![](resources/graphics/12-00.png)|**Full hour**<br /> Full hours (zero minutes) are displayed with the `o'clock` word instead of a minutes numeral.|

**Note**  
There are no user customization settings in this watch face.

## Fonts

The English Time watch face uses custom fonts:

* [Asap Condensed](https://fonts.google.com/specimen/Asap) for hour (AsapCondensed bold) and minutes (AsapCondensed light) words.

The font development process was as follows:

* The fonts were downloaded from [Google Fonts](https://fonts.google.com/) as True Type  (`.ttf`) fonts.
* The fonts were converted to bitmaps as `.fnt` and `.png` pairs using the open source command-line [`ttf2bmp`](https://github.com/wkusnierczyk/ttf2bmp) converter.
* The font sizes were established to match the Garmin Fenix 7X Solar watch 280x280 pixel screen resolution.
* The fonts were then scaled proportionally to match other screen sizes available on Garmin watches with round screens using the included [utility script](utils/generate_fonts.py).

The table below lists all font sizes provided for the supported screen resolutions.

| Resolution |    Shape     | Element |        Font         | Size |
| ---------: | :----------- | :------ | :------------------ | ---: |
|  148 x 205 | rectangle    | Hours   | AsapCondensed bold  |   42 |
|  148 x 205 | rectangle    | Minutes | AsapCondensed light |   21 |
|  176 x 176 | semi-octagon | Hours   | AsapCondensed bold  |   50 |
|  176 x 176 | semi-octagon | Minutes | AsapCondensed light |   25 |
|  215 x 180 | semi-round   | Hours   | AsapCondensed bold  |   51 |
|  215 x 180 | semi-round   | Minutes | AsapCondensed light |   26 |
|  218 x 218 | round        | Hours   | AsapCondensed bold  |   62 |
|  218 x 218 | round        | Minutes | AsapCondensed light |   31 |
|  240 x 240 | round        | Hours   | AsapCondensed bold  |   69 |
|  240 x 240 | rectangle    | Hours   | AsapCondensed bold  |   69 |
|  240 x 240 | round        | Minutes | AsapCondensed light |   34 |
|  240 x 240 | rectangle    | Minutes | AsapCondensed light |   34 |
|  260 x 260 | round        | Hours   | AsapCondensed bold  |   74 |
|  260 x 260 | round        | Minutes | AsapCondensed light |   37 |
|  280 x 280 | round        | Hours   | AsapCondensed bold  |   80 |
|  280 x 280 | round        | Minutes | AsapCondensed light |   40 |
|  320 x 360 | rectangle    | Hours   | AsapCondensed bold  |   91 |
|  320 x 360 | rectangle    | Minutes | AsapCondensed light |   46 |
|  360 x 360 | round        | Hours   | AsapCondensed bold  |  103 |
|  360 x 360 | round        | Minutes | AsapCondensed light |   51 |
|  390 x 390 | round        | Hours   | AsapCondensed bold  |  111 |
|  390 x 390 | round        | Minutes | AsapCondensed light |   56 |
|  416 x 416 | round        | Hours   | AsapCondensed bold  |  119 |
|  416 x 416 | round        | Minutes | AsapCondensed light |   59 |
|  454 x 454 | round        | Hours   | AsapCondensed bold  |  130 |
|  454 x 454 | round        | Minutes | AsapCondensed light |   65 |


---

## Build, test, deploy

To modify and build the sources, you need to have installed:

* [Visual Studio Code](https://code.visualstudio.com/) with [Monkey C extension](https://developer.garmin.com/connect-iq/reference-guides/visual-studio-code-extension/).
* [Garmin Connect IQ SDK](https://developer.garmin.com/connect-iq/sdk/).

Consult [Monkey C Visual Studio Code Extension](https://developer.garmin.com/connect-iq/reference-guides/visual-studio-code-extension/) for how to execute commands such as `build` and `test` to the Monkey C runtime.

You can use the included `Makefile` to conveniently trigger some of the actions from the command line.


```bash
# build binaries from sources
make build

# run unit tests -- note: requires the simulator to be running
make test

# run the simulation 
make run

# clean up the project directory
make clean
```

To sideload your application to your Garmin watch, see [developer.garmin.com/connect-iq/connect-iq-basics/your-first-app](https://developer.garmin.com/connect-iq/connect-iq-basics/your-first-app/).
