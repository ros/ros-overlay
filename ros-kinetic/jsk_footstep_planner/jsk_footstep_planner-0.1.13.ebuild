# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="jsk_footstep_planner"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_planner"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_planner/0.1.13-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/jsk_topic_tools
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roseus
    ros-kinetic/geometry_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_footstep_msgs
"
DEPEND="
    ros-kinetic/pcl_ros
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/jsk_topic_tools
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_generation
    ros-kinetic/roseus
    ros-kinetic/geometry_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/jsk_footstep_msgs
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
