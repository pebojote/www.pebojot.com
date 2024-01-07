---
layout: post
title: Rock/Stone Climbing
author: Pebojot
date: 2023-8-1
image_url: https://onedrive.live.com/embed?resid=655EB2CF553A75A2%2110707&authkey=%21ACzXejOJposD9b0
latest: false
project_url: 2023/8/1/climbing/
type: pv
---

<div class="container p-0">
  <div class="row p-0">
    {% assign reversed_p_v_climbing_data = site.data.p_v_climbing_gallery | reverse %}
    {% for p_v_climbing in reversed_p_v_climbing_data %}
    <div class="col-md-4 mt-3 col-lg-3 p-0">
      <div class="card">
        {% if p_v_climbing.type == "video" %}
        <div class="embed-responsive embed-responsive-16by9">
          <video class="embed-responsive-item w-100" controls>
            <source src="{{ p_v_climbing.src }}" type="video/mp4">
            Your browser does not support the video tag.
          </video>
        </div>
        {% else %}
        <img src="{{ p_v_climbing.src }}" class="card-img-top" alt="{{ p_v_climbing.alt }}">
        {% endif %}
        <span class="mobile__size">
          <div class="card-body">
            <h5 class="card-title fw-lighter">{{ p_v_climbing.title }}</h5>
            <div class="accordion" id="accordionExample{{ forloop.index }}">
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading{{ forloop.index }}">
                  <button class="accordion-button block" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapse{{ forloop.index }}" aria-expanded="false"
                    aria-controls="collapse{{ forloop.index }}">
                    Description
                  </button>
                </h2>
                <div id="collapse{{ forloop.index }}" class="accordion-collapse collapse block"
                  aria-labelledby="heading{{ forloop.index }}" data-bs-parent="#accordionExample{{ forloop.index }}">
                  <div class="accordion-body">
                    <p class="card-text fw-lighter">
                      <span class="desktop__size">{{ p_v_climbing.desktop_description }}</span>
                      <span class="mobile__size">{{ p_v_climbing.mobile_description }}</span>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </span>
      </div>
    </div>
    {% endfor %}
  </div>
</div>
