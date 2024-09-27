---
layout: default
title: '<i class="bi bi-film"></i> Videos'
permalink: /videos/
---
{% for vid in site.data.youtube %}    
<article class="my-5">
  <h3>{{ vid.name }}</h3>
  <p>{{ vid.date }}</p>
  <div class="text-center video">
    <iframe width="560" height="315" src="{{ vid.video }}" title="YouTube video player" frameborder="2" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrer="" policy="strict-origin-when-cross-origin" allowfullscreen></iframe>    
  </div>
  <p><a href="{{ vid.video }}" target="_blank">Link</a></p>
</article>
{% endfor %}
