---
layout: page
title: Blog Archive
slug: blog-archive
---

{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.date | date: "%B %Y %d" }} - {{ post.title }}</a>
      {% for category in categories %}
       <a class="tag {{ category | downcase }}" href="{{site.baseurl}}/categories/#{{category|slugize}}">{{ category }}</a>
      {% endfor %}
      </li>
    {% endfor %}
  </ul>
{% endfor %}
