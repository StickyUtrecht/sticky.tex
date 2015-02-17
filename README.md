# sticky.tex

This is a collection of LaTeX classes and styles in use at Study Association Sticky.
They are intended for use in minutes of committees and other meetings.

## Versioning

The classes in this package follow [`semver`](http://semver.org/).

## Dependencies

These files require LaTeX2e. Older versions are not supported.

`sticky_typography.cls` dependencies:

 - `titlesec`
 - `bitstream-charter`
 - `carlito`
 - `fontenc`

`sticky_minutes.cls` dependencies:

 - `sticky_typography`
 - `xspace`
 - `fancyhdr`
 - `lastpage`
 - `multido`
 - `multido`

## Installation

Make sure you have the dependencies installed. After that there are two ways of
installing these styles:

 1. Put the `.cls` files in the same directory as your `.tex` file, you're done. Easy
    for simple, one-off documents.
 1. Install these classes in your `TEXFHOME`. This is more involved, but after you
    have done this, you never have to copy the style files again.

### `TEXFHOME` installation

Run the following command to find your `TEXFHOME`. This should work both on Windows
and UNIX-y systems.

```
kpsewhich -var-value=TEXMFHOME
```

This will probably show a value like `C:/Users/<user>/texmf` or `~/texmf`. Place the
files you want in `TEXMFHOME/tex/latex/commonstuff`. Create the directory if you must.

For example, if your `TEXMFHOME` is `C:/Users/duijf/texmf`, you should place the `.cls`
files in `C:/Users/duijf/texmf/tex/latex/commonstuff`. After that, they should get
picked up. You can verify the installation with the `kpsewhich` command. For example:

```
kpsewhich sticky_minutes.cls
```

## Usage

You can take a look at `tests.tex` for examples of usage.

## License

MIT with parts of the code under CC-BY-SA 3.0 unported because of their origin on
Stack Exchange. These sections are marked by comments, where you will also find
attribution. In the future the full list will be in this README as well.

See `LICENSE.md` for the MIT license and [here][cc-by-sa] for the relevant Creative
Commons License.

  [cc-by-sa]:https://creativecommons.org/licenses/by-sa/3.0/
