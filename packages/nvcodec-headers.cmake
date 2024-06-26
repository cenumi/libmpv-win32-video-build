ExternalProject_Add(nvcodec-headers
    GIT_REPOSITORY https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
    SOURCE_DIR ${SOURCE_LOCATION}
    GIT_TAG c5e4af74850a616c42d39ed45b9b8568b71bf8bf
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ${MAKE} -C <SOURCE_DIR>
        PREFIX=${MINGW_INSTALL_PREFIX}
        install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(nvcodec-headers)
cleanup(nvcodec-headers install)
