# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/face_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.0.10-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/image_geometry
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roslib
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/rosbag
    ros-kinetic/image_transport
    ros-kinetic/openni_launch
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/cv_bridge
    ros-kinetic/actionlib

"
DEPEND="${RDEPEND}
    ros-kinetic/image_geometry
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/stereo_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/roslib
    ros-kinetic/std_msgs
    ros-kinetic/rosbag
    ros-kinetic/image_transport
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/cv_bridge
    ros-kinetic/actionlib

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
