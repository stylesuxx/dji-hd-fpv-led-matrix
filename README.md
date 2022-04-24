# Draw Symbols on the DJI FPV HD goggles LED matrix

> This will only work on [rooted goggles](https://github.com/fpv-wtf/margerine)

## Installation
An `ipk` package is available in the releases section and can be installed via `opkg`.

## Manual Installation
Use `adb` to copy everything in place and make it executable on the goggles:

```
adb push scripts /blackbox
```

Make sure that the `/blackbox/scripts` is part of your PATH.

## Usage
To draw a symbol to the LED Matrix invoke from the `blackbox` directory like so:

```
led-draw-char A
```

> Have a look at the example script to see how to chain multiple draw operations.


To see all possible options run:

```
led-draw-char -h
```

To draw a string to the LED Matrix invoke run:

```
led-draw-string "BOOBS" 0.75
```

The second parameter is how long each character should be shown in seconds.
