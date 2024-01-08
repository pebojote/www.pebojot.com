---
layout: post
title: Software/Engineering
author: Pebojot
date: 2023-1-1
image_url: https://onedrive.live.com/embed?resid=655EB2CF553A75A2%2115328&authkey=%21AAVehIIO7A-vfWs
latest: false
project_url: 2023/1/1/podcast/
type: podcast
---

<div class="container p-0">
    <div class="row p-0">
      {% assign reversed_software_engineering_playlist_podcast_data = site.data.software_engineering_playlist_podcast | reverse %}
      {% for software_engineering_playlist_podcast in reversed_software_engineering_playlist_podcast_data %}
      <div class="col-md-4 mt-3 col-lg-3 p-0">
        <div class="card">
          {% if software_engineering_playlist_podcast.type == "video" %}
          <!-- <div class="embed-responsive embed-responsive-16by9">
            <video class="embed-responsive-item w-100" controls>
              <source src="{{ software_engineering_playlist_podcast.src }}" type="video/mp4">
              Your browser does not support the video tag.
            </video>
          </div> -->
            {% youtube software_engineering_playlist_podcast.src %}
          {% else %}
          <img src="{{ software_engineering_playlist_podcast.src }}" class="card-img-top" alt="{{ software_engineering_playlist_podcast.alt }}">
          {% endif %}
          <span class="mobile__size">
            <div class="card-body">
              <h5 class="card-title fw-lighter">{{ software_engineering_playlist_podcast.title }}</h5>
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
                        <span class="desktop__size">{{ software_engineering_playlist_podcast.desktop_description }}</span>
                        <span class="mobile__size">{{ software_engineering_playlist_podcast.mobile_description }}</span>
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
  