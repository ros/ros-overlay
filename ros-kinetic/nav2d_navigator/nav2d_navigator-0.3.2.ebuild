# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides a node for higher level navigation of a mobile
    robot in a planar environment. It needs a map and the robot's position
    within this map to create a plan for navigation. When used together with
    a SLAM module it can also be used to perform autonomous exploration of
    the robot's workspace."
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_navigator/0.3.2-0.tar.gz"

LICENSE="GPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/nav2d_operator
    ros-kinetic/actionlib_msgs
    ros-kinetic/nav2d_msgs
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/nav2d_operator
    ros-kinetic/actionlib_msgs
    ros-kinetic/nav2d_msgs
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
