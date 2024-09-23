#!/bin/bash

file_name=$1

# This script is used to generate blog posts from the data in the _data directory

while IFS= read -r -d '' yaml_file; do

    echo  "-----------------------"
    echo "COLLECTION"    
    
    NAME=$(yq eval '.name' <<<"$yaml_file")
    PARENS=$(echo $NAME | sed "s|.*\(([^()]*)\).*|\1|" | sed "s/[()]//g")
    PARENS=$(echo $PARENS | sed "s/ and /, /g")
    PARENS=$(echo $PARENS | sed "s|\/|, |g")
    PARENS=$(echo $PARENS | sed "s/\[(].* to .*[)]//")
    OTHERDJS=$(echo $PARENS | sed "s| by (.*)|, \1|g")
    PARENS=$(echo $PARENS | sed "s|- | |g")
    PARENS=$(echo "$PARENS, $OTHERDJS")
    TAGS=$(echo $PARENS | tr " " ", ")
    TAGS=$(echo $TAGS | sed "s/.* at .*/ /")    
    TAGS=$(echo $TAGS | sed "s/,,/,/g")
    TAGS=$(echo $TAGS | sed "s/,$//")
    DATE=$(yq eval '.date' <<<"$yaml_file")
    ASSETURL=$(yq eval '.url' <<<"$yaml_file")
    DESC=$(yq eval '.desc' <<<"$yaml_file")
    IMAGE=$(yq eval '.image' <<<"$yaml_file")
    TRACKS=$(yq eval '.tracks[]' <<<"$yaml_file")
    
    #echo NAME  : $NAME 
    #echo PARENS: $PARENS
    #echo DATE  : $DATE 
    #echo URL   : $ASSETURL 
    #echo DESC  : "$DESC"
    #echo IMG   : $IMAGE 
    #echo -e "tracks: \n${TRACKS//track:/  - track:}"

    FILENAME="${DATE}-${NAME// /-}"
    FILENAME="${FILENAME/./}"
    FILENAME=$(echo ${FILENAME,,} | sed "s'-?*(.*''")
    FILENAME="${FILENAME}.md"
    FILENAME="../_posts/${FILENAME}"
    
    echo "  Creating file '$FILENAME'"
    touch $FILENAME
    echo "---" >> $FILENAME
    echo "layout: post" >> $FILENAME
    echo "title: $NAME" >> $FILENAME
    echo "name: $NAME" >> $FILENAME 
    echo "date: $DATE" >> $FILENAME 
    echo "image: $IMAGE" >> $FILENAME 
    echo "mp3: $ASSETURL" >> $FILENAME
    echo -e "description: \"$DESC\"" >> $FILENAME     
    echo -e tracks: "\n${TRACKS//track:/  - track:}" >> $FILENAME
    echo "categories: [podcast]" >> $FILENAME
    if [ ! -z "$TAGS" ]; then
    echo "tags: [${TAGS,,}]" >> $FILENAME
    fi
    echo "---" >> $FILENAME

    echo -e"\n$FILENAME CONTENTS --------------/n"
    cat $FILENAME
    echo -e "\nDONE -----------------------\n"

done < <(yq --nul-output '.[]' <"$file_name")