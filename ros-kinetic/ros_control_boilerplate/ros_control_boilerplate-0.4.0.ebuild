# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/ros_control_boilerplate-release/archive/release/kinetic/ros_control_boilerplate/0.4.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/urdf
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/std_msgs
    ros-kinetic/joint_limits_interface
    ros-kinetic/rosparam_shortcuts
    ros-kinetic/control_msgs
    ros-kinetic/transmission_interface

"
DEPEND="${RDEPEND}
    ros-kinetic/hardware_interface
    ros-kinetic/urdf
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/std_msgs
    ros-kinetic/joint_limits_interface
    ros-kinetic/libgflags-dev
    ros-kinetic/rosparam_shortcuts
    ros-kinetic/cmake_modules
    ros-kinetic/control_msgs
    ros-kinetic/transmission_interface

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
