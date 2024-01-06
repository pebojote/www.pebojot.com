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
      <div class="col-md-4 mt-3 col-lg-3">
        <!-- Image thumbnail -->
        <img src="{{ image.src }}" class="img-fluid" alt="{{ image.alt }}" onclick="expandImage(this)">
        <!-- Expanded Image (Initially Hidden) -->
        <div class="expanded-image" id="expandedImage{{ forloop.index }}">
          <img src="{{ image.src }}" class="img-fluid" alt="{{ image.alt }}">
        </div>
      </div>
    {% endfor %}
  </div>
</div>

<style>
  .expanded-image {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    justify-content: center;
    align-items: center;
  }

  .expanded-image img {
    max-width: 90%;
    max-height: 90%;
    margin: auto;
    display: block;
  }
</style>

<script>
  function expandImage(thumbnail) {
    var thumbnailIndex = thumbnail.getAttribute("data-index");
    var expandedImage = document.getElementById("expandedImage" + thumbnailIndex);

    if (expandedImage.style.display === "none") {
      expandedImage.style.display = "flex"; // Display the expanded image
    } else {
      expandedImage.style.display = "none"; // Hide the expanded image
    }
  }
</script>
