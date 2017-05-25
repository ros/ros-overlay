# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/py_trees_ros-release/archive/release/kinetic/py_trees_ros/0.5.12-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/nav_msgs
    ros-kinetic/python-termcolor
    ros-kinetic/std_msgs
    ros-kinetic/actionlib
    ros-kinetic/uuid_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/py_trees_msgs
    ros-kinetic/python-rospkg
    ros-kinetic/geometry_msgs
    ros-kinetic/py_trees
    ros-kinetic/move_base_msgs
    ros-kinetic/rospy
    ros-kinetic/rosbag
    ros-kinetic/actionlib_msgs
    ros-kinetic/unique_id

"
DEPEND="${RDEPEND}
    ros-kinetic/python-setuptools

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
