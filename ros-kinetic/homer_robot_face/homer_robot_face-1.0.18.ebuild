# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_robot_face-release/repository/archive.tar.gz?ref=release/kinetic/homer_robot_face/1.0.18-1"

LICENSE="LGPL-v2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/libpulse-dev
    ros-kinetic/libopencv-dev
    ros-kinetic/festival
    ros-kinetic/libogre-dev
    ros-kinetic/message_runtime
    ros-kinetic/qtbase5-dev
    ros-kinetic/roscpp_serialization
    ros-kinetic/libesd0-dev
    ros-kinetic/homer_mary_tts
    ros-kinetic/libestools-dev
    ros-kinetic/libqt5x11extras5-dev
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/festival-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/genmsg
    ros-kinetic/roscpp
    ros-kinetic/libpulse-dev
    ros-kinetic/libopencv-dev
    ros-kinetic/festival
    ros-kinetic/libogre-dev
    ros-kinetic/qtbase5-dev
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/libesd0-dev
    ros-kinetic/cmake_modules
    ros-kinetic/roscpp_serialization
    ros-kinetic/libestools-dev
    ros-kinetic/libqt5x11extras5-dev
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/roslang
    ros-kinetic/cv_bridge
    ros-kinetic/festival-dev

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
