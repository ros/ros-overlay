# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Controller for executing joint-space trajectories on a group of joints."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/joint_trajectory_controller/0.12.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/angles
    ros-kinetic/controller_interface
    ros-kinetic/realtime_tools
    ros-kinetic/roscpp
    ros-kinetic/urdf
    ros-kinetic/control_msgs
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/control_toolbox
"
DEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/controller_interface
    ros-kinetic/realtime_tools
    ros-kinetic/roscpp
    ros-kinetic/urdf
    ros-kinetic/control_msgs
    ros-kinetic/actionlib
    ros-kinetic/trajectory_msgs
    ros-kinetic/control_toolbox
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
