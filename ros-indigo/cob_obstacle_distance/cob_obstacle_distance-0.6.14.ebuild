# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The cob_obstacle_distance package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_obstacle_distance/0.6.14-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/cob_control_msgs
    ros-indigo/cob_srvs
    ros-indigo/dynamic_reconfigure
    ros-indigo/eigen_conversions
    ros-indigo/fcl
    ros-indigo/geometry_msgs
    ros-indigo/interactive_markers
    ros-indigo/joint_state_publisher
    ros-indigo/kdl_conversions
    ros-indigo/kdl_parser
    ros-indigo/moveit_msgs
    ros-indigo/orocos_kdl
    ros-indigo/robot_state_publisher
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rospy
    ros-indigo/rviz
    ros-indigo/sensor_msgs
    ros-indigo/shape_msgs
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/tf_conversions
    ros-indigo/urdf
    ros-indigo/visualization_msgs
    ros-indigo/xacro
    media-libs/assimp
    dev-libs/boost
    dev-cpp/eigen
    virtual/pkgconfig
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
