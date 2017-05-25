# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/dynpick_driver"
SRC_URI="https://github.com/tork-a/dynpick_driver-release/archive/release/kinetic/dynpick_driver/0.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/robot_state_publisher
    ros-kinetic/geometry_msgs
    ros-kinetic/tf
    ros-kinetic/xacro
    ros-kinetic/rviz

"
DEPEND="${RDEPEND}
    ros-kinetic/python-catkin-pkg
    ros-kinetic/geometry_msgs
    ros-kinetic/roscpp
    ros-kinetic/std_srvs

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
