# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/introlab/rtabmap-release/archive/release/kinetic/rtabmap/0.11.13-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libfreenect-dev
    ros-kinetic/libopenni-dev
    ros-kinetic/zlib
    ros-kinetic/octomap
    ros-kinetic/qt_gui_cpp
    ros-kinetic/libsqlite3-dev
    ros-kinetic/libvtk-qt
    ros-kinetic/libpcl-all-dev
    ros-kinetic/cv_bridge

"
DEPEND="${RDEPEND}
    ros-kinetic/libfreenect-dev
    ros-kinetic/libopenni-dev
    ros-kinetic/zlib
    ros-kinetic/octomap
    ros-kinetic/qt_gui_cpp
    ros-kinetic/libsqlite3-dev
    ros-kinetic/proj
    ros-kinetic/libvtk-qt
    ros-kinetic/libpcl-all-dev
    ros-kinetic/cv_bridge

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
