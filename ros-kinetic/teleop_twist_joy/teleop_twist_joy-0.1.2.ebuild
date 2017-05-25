# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/teleop_twist_joy"
SRC_URI="https://github.com/ros-teleop/teleop_twist_joy-release/archive/release/kinetic/teleop_twist_joy/0.1.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/sensor_msgs
    ros-kinetic/joy
    ros-kinetic/geometry_msgs
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/roscpp
    ros-kinetic/joy
    ros-kinetic/sensor_msgs
    ros-kinetic/roslint
    ros-kinetic/rostest
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
