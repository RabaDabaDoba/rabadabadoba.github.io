---
layout: page
info: https://jekyllcodex.org/without-plugin/image-gallery/#
---
## Gallery

{% include image-gallery.html folder="/assets/images" %}

## Another gallery

{% assign image_files = site.static_files | where: "image", true %}
{% for myimage in image_files %}
  {{ myimage.path }}
{% endfor %}
