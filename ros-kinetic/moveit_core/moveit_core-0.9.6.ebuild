# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_core/0.9.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rostime
    ros-kinetic/eigen_stl_containers
    ros-kinetic/sensor_msgs
    ros-kinetic/moveit_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/urdf
    ros-kinetic/geometric_shapes
    ros-kinetic/random_numbers
    ros-kinetic/srdfdom
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/octomap
    ros-kinetic/octomap_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/eigen_conversions
    sci-libs/fcl
    media-libs/assimp
    dev-libs/urdfdom
    dev-libs/urdfdom_headers
    dev-libs/console_bridge
    dev-cpp/eigen
    dev-libs/boost
"
DEPEND="
    ros-kinetic/rostime
    ros-kinetic/eigen_stl_containers
    ros-kinetic/sensor_msgs
    ros-kinetic/moveit_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/urdf
    ros-kinetic/geometric_shapes
    ros-kinetic/random_numbers
    ros-kinetic/roslib
    ros-kinetic/srdfdom
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/kdl_parser
    ros-kinetic/octomap
    ros-kinetic/octomap_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/eigen_conversions
    sci-libs/fcl
    media-libs/assimp
    dev-libs/urdfdom
    dev-libs/urdfdom_headers
    dev-libs/console_bridge
    dev-cpp/eigen
    dev-libs/boost
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
