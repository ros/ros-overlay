# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/gripper_action_controller/0.12.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/xacro
    ros-kinetic/hardware_interface
    ros-kinetic/urdf
    ros-kinetic/controller_interface
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/realtime_tools
    ros-kinetic/cmake_modules
    ros-kinetic/control_msgs
    ros-kinetic/angles
    ros-kinetic/control_toolbox

"
DEPEND="${RDEPEND}
    ros-kinetic/xacro
    ros-kinetic/hardware_interface
    ros-kinetic/urdf
    ros-kinetic/controller_interface
    ros-kinetic/roscpp
    ros-kinetic/controller_manager
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/realtime_tools
    ros-kinetic/cmake_modules
    ros-kinetic/control_msgs
    ros-kinetic/angles
    ros-kinetic/control_toolbox

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
