# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/sound_play/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/message_runtime
    ros-kinetic/roscpp
    ros-kinetic/festival
    ros-kinetic/gstreamer1.0-plugins-base
    ros-kinetic/actionlib_msgs
    ros-kinetic/roslib
    ros-kinetic/gstreamer1.0
    ros-kinetic/gstreamer1.0-plugins-ugly
    ros-kinetic/rospy
    ros-kinetic/python-gi
    ros-kinetic/gstreamer1.0-plugins-good
    ros-kinetic/diagnostic_msgs
    ros-kinetic/audio_common_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/actionlib_msgs
    ros-kinetic/roslib
    ros-kinetic/actionlib
    ros-kinetic/message_generation
    ros-kinetic/diagnostic_msgs
    ros-kinetic/audio_common_msgs

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
