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
