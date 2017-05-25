# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/tf"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/kinetic/tf/1.11.8-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/graphviz
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/roswtf
    ros-kinetic/tf2

"
DEPEND="${RDEPEND}
    ros-kinetic/rosconsole
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/tf2_ros
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/rostest
    ros-kinetic/geometry_msgs
    ros-kinetic/angles
    ros-kinetic/message_generation
    ros-kinetic/tf2

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
