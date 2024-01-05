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
        <img src="{{ image.src }}" class="img-fluid" alt="{{ image.alt }}" data-bs-toggle="modal" data-bs-target="#img{{ forloop.index }}">
        <!-- Modal -->
        <div class="modal fade" id="img{{ forloop.index }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered modal-xl">
            <div class="modal-content">
              <div class="modal-body">
                <img src="{{ image.src }}" class="img-fluid" alt="{{ image.alt }}">
              </div>
            </div>
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
</div>

<!-- Script to dynamically load content into the modal -->
<script>
    function waitForJQuery() {
        if (typeof $ !== 'undefined') {
            // $ is defined, execute your custom script
            $(document).ready(function () {
                {% for image in image_data %}
                $('#img{{ forloop.index }}').on('shown.bs.modal', function () {
                    // Replace the placeholder image with the actual image URL for this specific modal
                    var imageUrl = '{{ image.src }}';

                    // Update the src attribute of the image inside the modal
                    $(this).find('.modal-body img').attr('src', imageUrl);
                });
                {% endfor %}
            });
        } else {
            // $ is not defined, wait for a short interval and check again
            setTimeout(waitForJQuery, 50);
        }
    }

    // Start waiting for jQuery
    waitForJQuery();
</script>
