# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_obstacle_distance/0.6.14-0.tar.gz"

LICENSE="LGPL-v2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cob_control_msgs
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/xacro
    ros-indigo/geometry_msgs
    ros-indigo/std_msgs
    ros-indigo/urdf
    ros-indigo/kdl_conversions
    ros-indigo/shape_msgs
    ros-indigo/fcl
    ros-indigo/interactive_markers
    ros-indigo/tf_conversions
    ros-indigo/orocos_kdl
    ros-indigo/kdl_parser
    ros-indigo/rviz
    ros-indigo/moveit_msgs
    ros-indigo/dynamic_reconfigure
    ros-indigo/roslib
    ros-indigo/visualization_msgs
    ros-indigo/rospy
    ros-indigo/cmake_modules
    ros-indigo/sensor_msgs
    ros-indigo/joint_state_publisher
    ros-indigo/robot_state_publisher
    ros-indigo/cob_srvs
    ros-indigo/eigen_conversions
    media-libs/assimp
    virtual/pkgconfig
    dev-libs/boost
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
