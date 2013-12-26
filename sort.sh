#/bin/bash
 for artist in $(for i in *-*-*.mp3;do echo $i | cut -d '-' -f1 ; done);
            do mkdir $artist
            for album in  $(basename $(find . -name *.mp3 | cut -d '-' -f3) .mp3);
                     do     echo $album
                            mkdir $artist/$album
                            echo $artist/$album
                    for uncutfile in $(find . -name $artist-*-$album.mp3)
                             do
                            mv $uncutfile $artist/$album/$(echo $uncutfile | cut -d "-" -f 2).mp3
                    done
            done
    done

