# Install

A convenient way to install a LaTeX class (that is not made available on CTAN)
is to use the `TEXINPUTS` environment variable.

### Linux

Create a folder `~/latex/cls/SCreport` and place `SCreport.cls` and the `figs`
folder there:

```
~/latex/cls/SCreport/SCreport.cls
~/latex/cls/SCreport/figs/WCPFC-logo.pdf
```

Edit `~/.profile` and add the following line:

```sh
export TEXINPUTS=.//:~/latex//:
```

End session and log in again.

### Windows

After downloading the `ofp-sam-latex-utils` repository to your hard drive, run
the [`setup.bat`](setup.bat) script, from its location inside the `report`
folder.

The `setup.bat` script creates a folder `c:/home/latex/cls/SCreport`, places
`SCreport.cls` and the `figs` folder there, and makes LaTeX aware of this fixed
location.
