# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS wrapper around Fanelli et al.'s Real Time Head Pose Estimation from Consumer"
HOMEPAGE="http://ros.org/wiki/head_pose_estimation"
SRC_URI="https://github.com/OSUrobotics/head_pose_estimation-release/archive/release/indigo/head_pose_estimation/1.0.3-0.tar.gz"

LICENSE="Microsoft Shared Source"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/dynamic_reconfigure
    ros-indigo/angles
    ros-indigo/rospy
    ros-indigo/image_transport
    ros-indigo/geometry_msgs
    ros-indigo/message_filters
    ros-indigo/people_msgs
    ros-indigo/pcl_ros
    ros-indigo/roscpp
    ros-indigo/sensor_msgs
    ros-indigo/face_detector
    ros-indigo/tf
    ros-indigo/cv_bridge
    dev-python/numpy
"
DEPEND="${RDEPEND}
    ros-indigo/orocos_kdl
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
