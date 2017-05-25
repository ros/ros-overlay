# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rviz_plugins/2.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/rviz
    ros-kinetic/view_controller_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_gui_msgs
    ros-kinetic/std_msgs
    ros-kinetic/jsk_hark_msgs
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/message_generation
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/urdfdom_py
    ros-kinetic/jsk_topic_tools
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_geometry
    ros-kinetic/rviz
    ros-kinetic/view_controller_msgs
    ros-kinetic/jsk_recognition_utils
    ros-kinetic/jsk_gui_msgs
    ros-kinetic/std_msgs
    ros-kinetic/mk
    ros-kinetic/jsk_hark_msgs
    ros-kinetic/rosbuild
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/message_generation
    ros-kinetic/jsk_recognition_msgs
    ros-kinetic/urdfdom_py
    ros-kinetic/jsk_topic_tools
    ros-kinetic/cv_bridge
    ros-kinetic/diagnostic_msgs

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
