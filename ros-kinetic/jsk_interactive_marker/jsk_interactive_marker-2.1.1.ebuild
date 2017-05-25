# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_interactive_marker/2.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/urdf
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/roscpp
    ros-kinetic/actionlib
    ros-kinetic/roslib
    ros-kinetic/eigen_conversions
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/yaml-cpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/interactive_markers
    ros-kinetic/message_filters
    ros-kinetic/moveit_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/tinyxml
    ros-kinetic/tf_conversions
    ros-kinetic/rviz
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roseus
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/geometry_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/interactive_markers
    ros-kinetic/dynamic_tf_publisher
    ros-kinetic/cmake_modules
    ros-kinetic/roscpp
    ros-kinetic/actionlib
    ros-kinetic/roslib
    ros-kinetic/eigen_conversions
    ros-kinetic/rosbuild
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/yaml-cpp
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/urdf
    ros-kinetic/message_filters
    ros-kinetic/moveit_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/message_generation
    ros-kinetic/tinyxml
    ros-kinetic/tf_conversions
    ros-kinetic/rviz
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roseus
    ros-kinetic/mk
    ros-kinetic/jsk_rviz_plugins
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
