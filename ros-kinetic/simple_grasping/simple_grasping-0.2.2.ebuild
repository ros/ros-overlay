# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Basic grasping applications and demos."
HOMEPAGE="http://ros.org/wiki/simple_grasping"
SRC_URI="https://github.com/fetchrobotics-gbp/simple_grasping-release/archive/release/kinetic/simple_grasping/0.2.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/actionlib
    ros-kinetic/sensor_msgs
    ros-kinetic/moveit_msgs
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/grasping_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/moveit_python
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/actionlib
    ros-kinetic/cmake_modules
    ros-kinetic/sensor_msgs
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/grasping_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/moveit_msgs
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
