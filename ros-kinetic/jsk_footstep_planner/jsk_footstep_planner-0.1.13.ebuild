# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_footstep_planner"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_planner/0.1.13-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roseus
    ros-kinetic/roscpp
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/jsk_topic_tools
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roseus
    ros-kinetic/roscpp
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/geometry_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/message_generation
    ros-kinetic/jsk_topic_tools
    ros-kinetic/pcl_ros

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
