# Draw Symbols on the DJI FPV HD goggles LED matrix

> This will only work on [rooted goggles](https://github.com/fpv-wtf/margerine)

## Installation
Use `adb` to copy everything in place and make it executable on the goggles:

```
adb push draw.sh /blackbox
adb push example.sh /blackbox
adb shell
chmod a+x /blackbox/draw.sh
chmod a+x /blackbox/draw_string.sh
chmod a+x /blackbox/example.sh
```

## Usage
To draw a symbol to the LED Matrix invoke from the `blackbox` directory like so:

```
./draw.sh A
```

> Have a look at the example script to see how to chain multiple draw operations.


To see all possible options run:

```
./draw.sh -h
```

To draw a string to the LED Matrix invoke from the `blackbox` directory like so:

```
./draw_string.sh "BOOBS" 0.75
```

The second parameter is how long each character should be shown in seconds.
