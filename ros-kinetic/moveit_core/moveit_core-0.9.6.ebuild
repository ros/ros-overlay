# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_core/0.9.6-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/eigen
    ros-kinetic/urdf
    ros-kinetic/liburdfdom-dev
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/libfcl-dev
    ros-kinetic/eigen_conversions
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/geometric_shapes
    ros-kinetic/trajectory_msgs
    ros-kinetic/std_msgs
    ros-kinetic/moveit_msgs
    ros-kinetic/rostime
    ros-kinetic/octomap_msgs
    ros-kinetic/assimp
    ros-kinetic/random_numbers
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/srdfdom
    ros-kinetic/boost
    ros-kinetic/kdl_parser
    ros-kinetic/octomap
    ros-kinetic/geometry_msgs
    ros-kinetic/sensor_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/roslib
    ros-kinetic/eigen
    ros-kinetic/urdf
    ros-kinetic/liburdfdom-dev
    ros-kinetic/liburdfdom-headers-dev
    ros-kinetic/libfcl-dev
    ros-kinetic/eigen_conversions
    ros-kinetic/eigen_stl_containers
    ros-kinetic/visualization_msgs
    ros-kinetic/geometric_shapes
    ros-kinetic/shape_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/moveit_msgs
    ros-kinetic/rostime
    ros-kinetic/octomap_msgs
    ros-kinetic/assimp
    ros-kinetic/random_numbers
    ros-kinetic/std_msgs
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/srdfdom
    ros-kinetic/boost
    ros-kinetic/kdl_parser
    ros-kinetic/octomap
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
