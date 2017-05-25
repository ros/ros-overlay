# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_play/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/gstreamer1.0-plugins-base
    ros-kinetic/gstreamer1.0-plugins-ugly
    ros-kinetic/gstreamer1.0-plugins-good
    ros-kinetic/gstreamer1.0
    ros-kinetic/audio_common_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/libgstreamer-plugins-base1.0-dev
    ros-kinetic/roscpp
    ros-kinetic/audio_common_msgs
    ros-kinetic/libgstreamer1.0-dev

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
