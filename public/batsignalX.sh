#!/bin/bash -ex

exec /usr/bin/batsignal     \
                    -d 5    \ 
                    -c 15   \ 
                    -w 25   \
                    -D /usr/bin/gsound-play /usr/share/sounds/freedesktop/stereo/lo-bat.oga
