# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_core/0.9.6-1.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/urdf
    ros-lunar/eigen_conversions
    ros-lunar/eigen_stl_containers
    ros-lunar/visualization_msgs
    ros-lunar/geometric_shapes
    ros-lunar/trajectory_msgs
    ros-lunar/std_msgs
    ros-lunar/moveit_msgs
    ros-lunar/rostime
    ros-lunar/octomap_msgs
    ros-lunar/random_numbers
    ros-lunar/srdfdom
    ros-lunar/kdl_parser
    ros-lunar/octomap
    ros-lunar/geometry_msgs
    ros-lunar/sensor_msgs
    eigen
    liburdfdom-dev
    liburdfdom-headers-dev
    libfcl-dev
    assimp
    libconsole-bridge-dev
    boost
"
DEPEND="
    ros-lunar/roslib
    ros-lunar/urdf
    ros-lunar/eigen_conversions
    ros-lunar/eigen_stl_containers
    ros-lunar/visualization_msgs
    ros-lunar/geometric_shapes
    ros-lunar/shape_msgs
    ros-lunar/trajectory_msgs
    ros-lunar/sensor_msgs
    ros-lunar/moveit_msgs
    ros-lunar/rostime
    ros-lunar/octomap_msgs
    ros-lunar/random_numbers
    ros-lunar/std_msgs
    ros-lunar/srdfdom
    ros-lunar/kdl_parser
    ros-lunar/octomap
    ros-lunar/geometry_msgs
    eigen
    liburdfdom-dev
    liburdfdom-headers-dev
    libfcl-dev
    assimp
    libconsole-bridge-dev
    boost
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
