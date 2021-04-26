#
# Install R pkgs
#

# usage: sudo bash gh_action__setup_and_install.bash

# Add cran2deb4ubuntu 4.0 PPA
echo "Add cran2deb4ubuntu 4.0 PPA"
add-apt-repository ppa:c2d4u.team/c2d4u4.0+

# apt-get update & install aptitude
echo "apt-get update & install aptitude"
apt-get update
apt-get install aptitude -y

# apt-get upgrade
echo "apt-get upgrade"
apt-get upgrade


# rvest dependencies by binaries
echo "rvest dependencies by binaries"
aptitude install -f -y \
  r-cran-assertthat \
  r-cran-dplyr  \
  r-cran-dplyr  \
  r-cran-httr \
  r-cran-jsonlite \
  r-cran-selectr \
  r-cran-xml2

# Install r-vest from R
echo "Install r-vest from R"
/usr/bin/R -e 'install.packages("rvest")'

# R site-library after install
echo "R site-library after install"
ls -lt /usr/lib/R/site-library/
        
# R library after install
echo "R library after install"
ls -lt /usr/lib/R/library/