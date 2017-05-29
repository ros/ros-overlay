# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Core libraries used by MoveIt!"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_core/0.9.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/octomap_msgs
    ros-kinetic/rostime
    ros-kinetic/random_numbers
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    ros-kinetic/urdf
    ros-kinetic/geometric_shapes
    ros-kinetic/kdl_parser
    ros-kinetic/moveit_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/eigen_stl_containers
    ros-kinetic/srdfdom
    ros-kinetic/trajectory_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/octomap
    ros-kinetic/eigen_conversions
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    dev-libs/console_bridge
    sci-libs/fcl
    dev-libs/urdfdom_headers
    dev-libs/urdfdom
"
DEPEND="${RDEPEND}
    ros-kinetic/shape_msgs
    ros-kinetic/roslib
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
