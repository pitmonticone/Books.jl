# Welcome {-}

```{=comment}
This file is only included on the website.
```

```jl
M.homepage_intro()
```

See @sec:about for more information about this package.
To get started and setup your own project, see @sec:getting-started.
You can see a demonstration of the features and usage examples in @sec:demo.

**Maintenance mode**

As it stands now, this project is in maintenance mode.
My main focus will be [PlutoStaticHTML.jl](https://github.com/rikhuijzer/PlutoStaticHTML.jl) in the near future because it is much easier to use, more versatile, more quick and more reliable.
In PlutoStaticHTML.jl, the code is evaluated by Pluto, and PlutoStaticHTML grabs the outputs and converts them to HTML.
For an example site with that package, see the [**Julia Tutorials Template**](https://rikhuijzer.github.io/JuliaTutorialsTemplate/).

Using Books.jl will still remain possible.
We've successfully published the [Julia Data Science](https://juliadatascience.io/) book with it so everything should work.
Also, I'm motivated to maintain this package because I might write my thesis with it in about a year.

However, I personally don't believe much more in the approach taken in this project for two reasons:

First, PDFs are overrated.
According to the analytics on our book site, only about 10 % of the people who visit download the PDF and only 1 % buys the book.
Making LaTeX work for this package took relatively a lot of time and is still quite brittle.
Even with the Pandoc layer in between, I doubt that the whole hassle of things like Pandoc, LaTeX fonts, LaTeX styling is worth it.
On the other hand, HTML is a very versatile format for which robust standards exist.
Compared to PDF, HTML and CSS support:

- accurate copy pasting of text
- adjusting text based on screen width
- adjusting background color based on device settings and
- much more

Also, HTML can embed images in the document source (instead of in an separate image file) whereas LaTeX doesn't support this as far as I know.
LaTeX even has trouble with SVG meaning that this package has to add special logic for that.

Second, this package evaluates code.
Correctly evaluating code is **hard**.
For example, this package manually has to implement some overrides for `show` for different plotting objects such as Makie plots and DataFrames, but is far from complete.
Packages such as [Pluto.jl](https://plutojl.org) or Jupyter have spent much time on all these overrides too, but managing it all for a book package seems to be too much.

Anyway, so if you really want to have PDFs, then I hope you can use Books.jl successfully.
Feel free to ask questions on Discourse and I'll try to help out.
If you can go without PDFs, then copy the template at [Julia Tutorials Template](https://rikhuijzer.github.io/JuliaTutorialsTemplate/).

