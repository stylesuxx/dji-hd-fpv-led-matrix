# Draw Symbols on the DJI FPV HD goggles LED matrix

> This will only work on [rooted goggles](https://github.com/fpv-wtf/margerine)

## Installation
Use `adb` to copy everything in place:

```
adb push draw.sh /blackbox
adb push example.sh /blackbox
```

## Usage
To draw a symbol to the LED Matrix invoke from the `blackbox` directory like so:

```
./draw.sh A
```

Have a look at the example script to see how to chain multiple draw operations.
