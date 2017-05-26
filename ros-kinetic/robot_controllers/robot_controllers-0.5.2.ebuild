# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Some basic robot controllers for use with robot_controllers_interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers/0.5.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/orocos_kdl
    ros-kinetic/kdl_parser
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/robot_controllers_interface
    ros-kinetic/tf_conversions
    ros-kinetic/tf
    ros-kinetic/control_msgs
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/urdf
    ros-kinetic/trajectory_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/orocos_kdl
    ros-kinetic/kdl_parser
    ros-kinetic/angles
    ros-kinetic/sensor_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/robot_controllers_interface
    ros-kinetic/tf_conversions
    ros-kinetic/tf
    ros-kinetic/control_msgs
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/urdf
    ros-kinetic/trajectory_msgs
    ros-kinetic/actionlib_msgs
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
