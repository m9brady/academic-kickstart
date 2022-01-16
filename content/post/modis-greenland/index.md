---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Modis Greenland GDAL Conversion"
subtitle: ""
summary: "Converting old NSIDC products from NetCDF to GTiff"
authors: []
tags: []
categories: []
date: 2021-04-06T16:28:05-05:00
lastmod: 2021-04-06T16:28:05-05:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
Started as a quick response on Twitter
<blockquote class="twitter-tweet"><p lang="und" dir="ltr">This seems to do the trick? <br><br>gdal_translate -of GTiff -ot Byte -a_ullr -675000 -3387500 887500 -575000 -a_srs EPSG:3411 -a_nodata 255 NETCDF:&quot;<a href="https://t.co/pbBrlEEfZs">https://t.co/pbBrlEEfZs</a>&quot;:Albedo MODGRNLD.2019365.0105.swath.v01.1.tif</p>&mdash; Mike Brady (@m2brady) <a href="https://twitter.com/m2brady/status/1377768865522978824?ref_src=twsrc%5Etfw">April 1, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

... but then formalized in a Gist:

<script src="https://gist.github.com/m9brady/652d8178a27092ec5398de3558ed9714.js"></script>
