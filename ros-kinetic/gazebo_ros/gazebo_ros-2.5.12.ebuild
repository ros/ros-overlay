# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros/2.5.12-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosgraph_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/gazebo_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/tinyxml
    ros-kinetic/tf
    ros-kinetic/gazebo
    ros-kinetic/libgazebo7-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/rosgraph_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/roslib
    ros-kinetic/gazebo_msgs
    ros-kinetic/message_generation
    ros-kinetic/cmake_modules
    ros-kinetic/geometry_msgs
    ros-kinetic/tinyxml
    ros-kinetic/tf
    ros-kinetic/libgazebo7-dev

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
