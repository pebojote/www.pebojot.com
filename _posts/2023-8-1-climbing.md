---
layout: post
title: Embracing the Horizon
author: Pebojot
date: 2023-8-1
image_url: https://onedrive.live.com/embed?resid=655EB2CF553A75A2%217861&authkey=%21AHXT-pJfSAFMIr0
latest: false
project_url: 2023/8/1/climbing/
type: p&v
---

<div class="container p-0">
  <div class="row p-0">
    {% assign reversed_p_v_climbing_data = site.data.p_v_climbing_gallery | reverse %}
    {% for p_v_climbing in reversed_p_v_climbing_data %}
    <div class="col-md-4 mt-3 col-lg-3 p-0">
      {% if p_v_climbing.type=="video" %}
      <div class="embed-responsive embed-responsive-16by9">
        <video class="embed-responsive-item w-100" controls>
          <source src="{{ p_v_climbing.src }}" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>
      {% else %}
      <img src="{{ p_v_climbing.src }}" class="img-fluid" alt="{{ p_v_climbing.alt }}">
      {% endif %}
    </div>
    {% endfor %}
  </div>
</div>
