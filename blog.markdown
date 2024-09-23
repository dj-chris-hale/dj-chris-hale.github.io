---
layout: page
title: '<i class="bi bi-speaker-fill"></i> Blog'
permalink: /blog/
list_title: 'Dj Sessions'
---
{% if site.paginate %}
    {% assign posts = paginator.posts %}
  {% else %}
    {% assign posts = site.posts %}
{% endif %}
{% include blog.html %}