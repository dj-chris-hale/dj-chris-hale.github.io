---
layout: default
title: '<i class="bi bi-vinyl-fill"></i> Releases'
date: 2024-09-20
permalink: /releases/

itunes:
  - url: https://itunes.apple.com/us/artist/dj-chris-hale/343874777
  - url: https://music.apple.com/us/artist/dj-chris-hale/1514836129
  - url: https://music.apple.com/us/artist/dj-chris-hale/1497802264
amazon:
  - url: https://www.amazon.co.jp/music/player/artists/B00HRV6VBW/dj-chris-hale

releases:
  - release: Automatik, Minimal and Ambient Techno
    label: xp8r
    mp3: /assets/music/automatik.mp3
    description: "Automatik, Minimal and Ambient Techno"
    art: /assets/images/albums/automatik.png
    urls:
      amazon: https://www.amazon.com/Automatik-Minimal-Ambient-Techno-Chris/dp/B00H316HJW/ref=tmm_acd_swatch_0?_encoding=UTF8&qid=1537408400&sr=1-2-catcorr
      itunes: https://itunes.apple.com/us/artist/dj-chris-hale/343874777
  
  - release: Arkitekt
    label: xp8r
    mp3: /assets/music/arkitekt.mp3
    description: "Arkitect"
    art: /assets/images/albums/arkitekt.png
    urls:
      amazon: https://www.amazon.com/Arkitekt-Minimal-Ambient-Techno-Chris/dp/B01KAPOQJA?keywords=DJ+Chris+Hale&qid=1537408339&s=Music&sr=1-1-catcorr&ref=sr_1_1
      itunes: https://itunes.apple.com/us/artist/dj-chris-hale/343874777
  
  - release: The Womb EP
    label: xp8r
    mp3: /assets/music/womb.mp3
    description: "The Womb EP"
    art: /assets/images/albums/womb.png
    urls:
      amazon: https://www.amazon.com/Womb-ep-Chris-Hale/dp/B00066ZUKI/ref=sr_1_1?s=music&ie=UTF8&qid=1526542014&sr=1-1&keywords=chris+hale+womb+ep
      itunes: https://itunes.apple.com/us/album/womb-ep/47245118
---
{% for release in page.releases %}
  <article class="my-5">    
    <div class="text-center">
      <img class="img-fluid" style="width: 40%;" src="{{ release.art }}" alt="{{ release.release }}" />
      <h2>{{ release.release }}</h2>
    </div>
    <p>Label: {{ release.label }}</p>
    <p>{{ release.description }}</p>
    <p>
      <audio controls>
        <source src="{{ release.mp3 }}" type="audio/mpeg">
        Your browser does not support the audio element.
      </audio>
    </p>
    <ul>
        <li><a href="{{ release.urls.amazon }}">Amazon</a></li>
        <li><a href="{{ release.urls.itunes }}">iTunes</a></li>      
    </ul>
  </article>
{% endfor %}


