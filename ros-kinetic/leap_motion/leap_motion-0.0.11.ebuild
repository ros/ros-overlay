# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/camera_info_manager
    ros-kinetic/rospack
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/roslib
    ros-kinetic/geometry_msgs
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/rospy
    ros-kinetic/visualization_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/roslib
    ros-kinetic/rospack
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/geometry_msgs
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/message_generation
    ros-kinetic/rospy
    ros-kinetic/visualization_msgs

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
