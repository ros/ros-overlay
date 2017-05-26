# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Face detection in images."
HOMEPAGE="http://ros.org/wiki/face_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/kinetic/face_detector/1.0.10-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/roslib
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/openni_launch
    ros-kinetic/roscpp
    ros-kinetic/rosbag
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/image_geometry
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/std_srvs
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/rosbag
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/image_geometry
    ros-kinetic/actionlib
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
