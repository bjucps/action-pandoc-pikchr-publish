# start with an Alpine-based install of pandoc
FROM pandoc/core:3.1

# use Alpine's package manager to install fossil SCM (for access to a build of pikchr)
RUN apk -U add fossil

# copy in pikchr.lua (from https://code.jboy.space/pikchr-filter/)
COPY pikchr.lua /pikchr.lua

# set the entrypoint to be pandoc _with_ the pikchr filter applied
ENTRYPOINT ["/usr/local/bin/pandoc", "--lua-filter", "/pikchr.lua"]
