sudo apt -y install libgconf2-4
sudo apt -y install libcanberra-gtk-module libcanberra-gtk3-module

# https://unix.stackexchange.com/questions/589993/pango-error-harfbuzz-version-too-old
# https://pkgs.org/download/libpango-1.0-0

# https://www.cyberciti.biz/faq/how-to-extract-a-deb-file-without-opening-it-on-debian-or-ubuntu-linux/

(pydata-book) rodney@rodney-ThinkPad-X1-Carbon:~/Projects/LighttableDocker/lighttable-0.8.1-linux$ ldd LightTable | grep pango
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007fcc32908000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007fcc32794000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007fcc31199000)
(pydata-book) rodney@rodney-ThinkPad-X1-Carbon:~/Projects/LighttableDocker/lighttable-0.8.1-linux$ dpkg -l | grep libpango
ii  libpango-1.0-0:amd64                          1.44.7-2ubuntu4                       amd64        Layout and rendering of internationalized text
ii  libpango-perl                                 1.227-3build1                         amd64        Perl module to layout and render international text
ii  libpangocairo-1.0-0:amd64                     1.44.7-2ubuntu4                       amd64        Layout and rendering of internationalized text
ii  libpangoft2-1.0-0:amd64                       1.44.7-2ubuntu4                       amd64        Layout and rendering of internationalized text
ii  libpangomm-1.4-1v5:amd64                      2.42.0-2build1                        amd64        C++ Wrapper for pango (shared libraries)
ii  libpangoxft-1.0-0:amd64                       1.44.7-2ubuntu4                       amd64        Layout and rendering of internationalized text


ar xv libpango-1.0-0_1.44.7-2ubuntu4_amd64.deb
tar xvf data.tar.xz
cd usr/lib/x86_64-linux-gnu/
cp libpango-1.0.so.0 ~/Projects/LighttableDocker/lighttable-0.8.1-linux


# https://ubuntu.pkgs.org/20.04/ubuntu-main-arm64/libpangocairo-1.0-0_1.44.7-2ubuntu4_arm64.deb.html

# https://ubuntu.pkgs.org/20.04/ubuntu-main-amd64/libpangoft2-1.0-0_1.44.7-2ubuntu4_amd64.deb.html

#********************************** https://askubuntu.com/questions/1249043/run-simple-x11-app-in-docker-container-on-ubuntu-20-04
