docker run -dt \
    --name=plex \
    --restart=unless-stopped \
    --hostname=plexy \
    -p 32400:32400 \
    -e PLEX_CLAIM="${1}" \
    -v /config/plex:/config \
    -v /transcode:/transcode \
    -v /media:/media \
    spritsail/plex-media-server
