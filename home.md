---
layout: default
---
{% for post in site.posts %}
{{ post.title }}
{{content}} 
Read More 
{% endfor %}