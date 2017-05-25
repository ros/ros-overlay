# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_transform_util/0.2.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geographic_msgs
    ros-kinetic/roscpp
    ros-kinetic/nodelet
    ros-kinetic/boost
    ros-kinetic/pluginlib
    ros-kinetic/sensor_msgs
    ros-kinetic/topic_tools
    ros-kinetic/yaml-cpp
    ros-kinetic/libgeos++-dev
    ros-kinetic/geometry_msgs
    ros-kinetic/proj
    ros-kinetic/swri_roscpp
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/swri_yaml_util
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/swri_math_util

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geographic_msgs
    ros-kinetic/roscpp
    ros-kinetic/nodelet
    ros-kinetic/boost
    ros-kinetic/pluginlib
    ros-kinetic/swri_roscpp
    ros-kinetic/topic_tools
    ros-kinetic/yaml-cpp
    ros-kinetic/libgeos++-dev
    ros-kinetic/geometry_msgs
    ros-kinetic/proj
    ros-kinetic/swri_yaml_util
    ros-kinetic/tf
    ros-kinetic/rospy
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs
    ros-kinetic/swri_math_util

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
