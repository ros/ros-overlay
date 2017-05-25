# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/kinetic/pcl_ros/1.4.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/tf2_eigen
    ros-kinetic/pcl_conversions
    ros-kinetic/eigen
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/rosbag
    ros-kinetic/pcl_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/nodelet_topic_tools
    ros-kinetic/tf
    ros-kinetic/libvtk-java
    ros-kinetic/proj
    ros-kinetic/libpcl-all-dev
    ros-kinetic/nodelet
    ros-kinetic/roscpp

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/rosconsole
    ros-kinetic/genmsg
    ros-kinetic/pcl_conversions
    ros-kinetic/eigen
    ros-kinetic/message_filters
    ros-kinetic/pluginlib
    ros-kinetic/std_msgs
    ros-kinetic/rosbag
    ros-kinetic/pcl_msgs
    ros-kinetic/roslib
    ros-kinetic/sensor_msgs
    ros-kinetic/nodelet_topic_tools
    ros-kinetic/tf
    ros-kinetic/cmake_modules
    ros-kinetic/libvtk-java
    ros-kinetic/proj
    ros-kinetic/libpcl-all-dev
    ros-kinetic/nodelet
    ros-kinetic/tf2_eigen
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
