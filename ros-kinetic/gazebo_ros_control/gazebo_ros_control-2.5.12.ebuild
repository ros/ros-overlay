# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_control/2.5.12-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/pluginlib
    ros-kinetic/transmission_interface
    ros-kinetic/urdf
    ros-kinetic/std_msgs
    ros-kinetic/joint_limits_interface
    ros-kinetic/angles
    ros-kinetic/gazebo_ros
    ros-kinetic/libgazebo7-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/hardware_interface
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/pluginlib
    ros-kinetic/transmission_interface
    ros-kinetic/urdf
    ros-kinetic/std_msgs
    ros-kinetic/joint_limits_interface
    ros-kinetic/angles
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
