---
layout: post
title: Hiking
author: Pebojot
date: 2022-05-01
image_url: https://onedrive.live.com/embed?resid=655EB2CF553A75A2%217856&authkey=%21AItpY9YKx-3y1SQ
latest: false
project_url: 2022/05/01/photography/
type: photography
---

<div class="container">
  <div class="row">
    {% assign image_data = site.data.image_gallery %}
    {% for image in image_data %}
      <div class="col-12 mt-3">
        <!-- Expanded Image -->
        <img src="{{ image.src }}" class="img-fluid" alt="{{ image.alt }}">
      </div>
    {% endfor %}
  </div>
</div>


