# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_safety_controller/2.0.13-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roch_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/yocs_controllers
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/roch_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/yocs_controllers
    ros-kinetic/geometry_msgs

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
