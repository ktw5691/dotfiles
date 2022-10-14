###############################
#### Environment Variables ####
###############################

## MISCELLANEOUS ##

# Disable Homebrew analytics
export HOMEBREW_NO_ANALYTICS=1

# Set language and localization variables
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Find CMake binary
export CMAKE_BIN=/opt/homebrew/bin/cmake

# Set JAVA_HOME
export JAVA_HOME="$(/usr/libexec/java_home)"

# Set TEXI2DVI using gettext via Homebrew
export TEXI2DVI=/opt/homebrew/opt/texinfo/bin/texi2dvi

# Configure ccache
export CCACHE_DIR=~/.ccache/ccache.conf

# Set PKG_CONFIG_PATH for pkgconfig via Homebrew
pkg_config_path=(/opt/homebrew/lib/pkgconfig /opt/homebrew/opt/gdal/lib/pkgconfig /opt/homebrew/opt/readline/lib/pkgconfig /opt/homebrew/opt/icu4c/lib/pkgconfig /opt/homebrew/opt/libxml2/lib/pkgconfig /opt/homebrew/opt/openblas/lib/pkgconfig /opt/homebrew/opt/openssl/lib/pkgconfig /opt/homebrew/opt/curl/lib/pkgconfig /opt/homebrew/opt/libxslt/lib/pkgconfig)
typeset -U pkg_config_path
export PKG_CONFIG_PATH

###################

## PATH ##

# Prevent PATH from containing duplicate entries
typeset -U path
path=(/opt/homebrew/opt/texinfo/bin /opt/homebrew/opt/openssl/bin  /opt/homebrew/opt/llvm/bin /opt/homebrew/opt/cmake/bin /opt/homebrew/opt/openssh/bin /opt/homebrew/opt/curl/bin /opt/homebrew/opt/libxslt/bin /opt/homebrew/opt/libxml2/bin /opt/homebrew/opt/icu4c/bin)


# Prepend path for gfortran needed by R on Silicon Mac (M1 chip)
path=(/opt/R/arm64/gfortran/bin $path)

# Prepend path for ccache install (needs to be first in PATH)
path=(/opt/homebrew/opt/ccache/libexec $path)
export PATH

##########

# typeset -U dyld_library_path
# dyld_library_path=($dyld_library_path)
# export DYLD_LIBRARY_PATH

######################
