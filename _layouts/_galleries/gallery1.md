---
title: the first gallery page
layout: gallery
galleryid: gallery1
--- 

{% for gallery in site.data.galleries %}

- [{{ gallery.description }}]({{ gallery.id }})
{% endfor %}
