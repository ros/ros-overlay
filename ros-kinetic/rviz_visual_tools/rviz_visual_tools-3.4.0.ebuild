# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/kinetic/rviz_visual_tools/3.4.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rviz
    ros-kinetic/std_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/roslint
    ros-kinetic/geometry_msgs
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/graph_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/rviz
    ros-kinetic/std_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/roslint
    ros-kinetic/geometry_msgs
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/graph_msgs
    ros-kinetic/tf_conversions
    ros-kinetic/roscpp

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
