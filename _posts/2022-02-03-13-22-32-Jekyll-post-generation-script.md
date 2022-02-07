---
title: Jekyll post generation script
date: '2022-02-03 13:22:32 +0200'
layout: post
categories: [Code, Blog]
slug: jekyll-post-generation-script
tags: [milk, pumpkin pie, eggs, juice]
---

## Making life easier

Since I want to be able to make these post as easy as possible I decided to make a script to create posts. I'm still learning on how to use `Markdown` together with `Jekyll`, so this blog/website will have a lot of updates so don't get used to anything yet.

## The beautiful code

{% highlight shell linenos %}
#!/bin/bash
echo "Title of the page:";
read title;
echo "Layout: ";
read layout;

DATEL=$(date +%Y-%m-%d"-"%H-%M-%S);
DATEP=$(date +%Y-%m-%d" "%H:%M:%S);
TITLESTRING=$(echo "$title" | tr " " -);
FINAL=$DATEL"-"$TITLESTRING".md";

touch $FINAL;
echo "---" >> $FINAL;
echo "title: "$title >> $FINAL;
echo "date: "$DATEP" +0200" >> $FINAL;
echo "layout: "$layout >> $FINAL;
echo "---" >> $FINAL;
echo $FINAL;
{% endhighlight %}

