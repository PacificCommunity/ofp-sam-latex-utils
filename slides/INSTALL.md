# Install

A convenient way to install a LaTeX package (that is not made available on CTAN)
is to use the `TEXINPUTS` environment variable.

### Linux

Create a folder `~/latex/sty/spc` and place `spc.sty` and the `figs` folder
there:

```
~/latex/sty/spc/spc.sty
~/latex/sty/spc/figs/spc-banner.png
~/latex/sty/spc/figs/spc-logo.pdf
```

Edit `~/.profile` and add the following line:

```sh
export TEXINPUTS=.//:~/latex//:
```

End session and log in again.

### Windows

After downloading the `ofp-sam-latex-utils` repository to your hard drive, run
the [`setup.bat`](setup.bat) script, from its location inside the `slides`
folder.

The `setup.bat` script creates a folder `c:/home/latex/sty/spc`, places
`spc.sty` and the `figs` folder there, and makes LaTeX aware of this fixed
location.
