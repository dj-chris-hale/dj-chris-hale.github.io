---
layout: default
title: Videos
permalink: /videos/
---
{% for vid in site.data.youtube %}    
<article class="my-5">  
  <div class="text-center video">
    <iframe width="560" height="315" src="{{ vid.video }}" title="YouTube video player" frameborder="2" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>    
    <p>Link: <a href="{{ vid.video }}" target="_blank">{{ vid.video }}</a></p>
  </div>
</article>
{% endfor %}

