#!/bin/bash
echo "Title of the page:";
read title;
echo "Layout: ";
read layout;

DATEL=$(date +%d-%m-%Y"-"%H-%M-%S);
DATEP=DATEL=$(date +%d-%m-%Y"-"%H-%M-%S);
TITLESTRING=$(echo "$title" | tr " " -);
FINAL=$DATEL"-"$TITLESTRING".md";



touch $FINAL;
echo "---" >> $FINAL;
echo "title: "$title >> $FINAL;
echo "date: "$DATEL >> $FINAL;
echo "layout: "$layout >> $FINAL;
echo "---" >> $FINAL;
echo $FINAL;
#---
#title: "name does not matter"
#layout: post
#date: 1997-06-12 11:04 +0200
#category: test
#---