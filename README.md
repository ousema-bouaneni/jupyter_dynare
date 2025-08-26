# jupyter-dynare-octave

Run [Dynare](https://www.dynare.org/) (Octave version) directly inside JupyterLab using [xeus-octave](https://github.com/jupyter-xeus/xeus-octave).  
This project provides a reproducible environment using [pixi](https://prefix.dev/pixi), so you can experiment with Dynare models in Jupyter notebooks seamlessly.

---

## Getting started

### 1. Install pixi
If you don’t already have it:
```
    curl -fsSL https://pixi.sh/install.sh | bash
```
### 2. Clone this repo
```
    git clone https://github.com/yourusername/jupyter-dynare-octave.git
    cd jupyter-dynare-octave
```

### 3. Install extension
```
    pixi install
```
### 4. Start JupyterLab
```
    pixi run lab
```
This launches JupyterLab with Octave + Dynare available.  
You can now either open a notebook and run Dynare commands inside as you would in Dynare or just open a `.mod` file directly!

---

## Example

Try to open `tests.ipynb` or any of the files in the `examples` directory from the newly launched Jupyterlab instance.

---

## Project status
- Works for running Dynare inside JupyterLab, but not yet for JupyterLite (`xeus-octave` needs to be ported first)
