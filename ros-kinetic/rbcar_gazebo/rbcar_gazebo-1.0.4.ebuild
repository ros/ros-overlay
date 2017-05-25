# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_gazebo/1.0.4-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/rbcar_control
    ros-kinetic/rbcar_description
    ros-kinetic/gazebo_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/tf
    ros-kinetic/rbcar_control
    ros-kinetic/rbcar_description
    ros-kinetic/gazebo_ros

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
