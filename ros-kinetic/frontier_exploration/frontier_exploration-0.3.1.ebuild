# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/paulbovbel/frontier_exploration-release/archive/release/kinetic/frontier_exploration/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/actionlib
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/actionlib_msgs
    ros-kinetic/libpcl-all

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/libpcl-all-dev
    ros-kinetic/roscpp
    ros-kinetic/costmap_2d
    ros-kinetic/actionlib
    ros-kinetic/std_msgs
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/move_base_msgs
    ros-kinetic/actionlib_msgs

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
