# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/hrpsys-release/archive/release/kinetic/hrpsys/315.10.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-tk
    ros-kinetic/libxml2
    ros-kinetic/glut
    ros-kinetic/libqhull
    ros-kinetic/libirrlicht-dev
    ros-kinetic/openhrp3
    ros-kinetic/sdl
    ros-kinetic/cv_bridge
    ros-kinetic/libxmu-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/python-tk
    ros-kinetic/git
    ros-kinetic/libglew-dev
    ros-kinetic/libxml2
    ros-kinetic/glut
    ros-kinetic/libqhull
    ros-kinetic/mk
    ros-kinetic/graphviz
    ros-kinetic/doxygen
    ros-kinetic/openhrp3
    ros-kinetic/sdl
    ros-kinetic/libirrlicht-dev
    ros-kinetic/cv_bridge
    ros-kinetic/libxmu-dev

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
