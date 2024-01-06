---
layout: post
title: Hiking
author: Pebojot
date: 2022-05-01
image_url: https://onedrive.live.com/embed?resid=655EB2CF553A75A2%217861&authkey=%21AHXT-pJfSAFMIr0
latest: false
project_url: 2022/05/01/adventure/
type: adventure
---

<div class="container">
  <div class="row">
    {% assign reversed_adventure_data = site.data.adventure_gallery | reverse %}
    {% for adventure in reversed_adventure_data %}
      <div class="col-md-4 mt-3 col-lg-3">
        <!-- Image thumbnail -->
        <img src="{{ adventure.src }}" class="img-fluid custom-img w-100 z-index-1" alt="{{ adventure.alt }}">
      </div>
    {% endfor %}
  </div>
</div>