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

<div class="container p-0">
  <div class="row p-0">
    {% assign reversed_adventure_data = site.data.adventure_gallery | reverse %}
    {% for adventure in reversed_adventure_data %}
    <div class="col-md-4 mt-3 col-lg-3 p-0">
      {% if adventure.type=="video" %}
      [![Click to play](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID/0.jpg)]({{ adventure.src }})
      {% else %}
      ![{{ adventure.alt }}]({{ adventure.src }}){:class="img-fluid"}
      {% endif %}
    </div>
    {% endfor %}
  </div>
</div>

