# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosjava-release/rosjava_messages-release/archive/release/kinetic/rosjava_messages/0.3.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/genjava
    ros-kinetic/rosjava_build_tools

"
DEPEND="${RDEPEND}
    ros-kinetic/stereo_msgs
    ros-kinetic/actionlib_msgs
    ros-kinetic/trajectory_msgs
    ros-kinetic/rocon_service_pair_msgs
    ros-kinetic/yocs_msgs
    ros-kinetic/concert_msgs
    ros-kinetic/rocon_tutorial_msgs
    ros-kinetic/uuid_msgs
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rosjava_test_msgs
    ros-kinetic/tf2_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/scheduler_msgs
    ros-kinetic/roscpp
    ros-kinetic/rocon_device_msgs
    ros-kinetic/rosjava_build_tools
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/world_canvas_msgs
    ros-kinetic/shape_msgs
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/genjava
    ros-kinetic/std_msgs
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/concert_service_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/diagnostic_msgs
    ros-kinetic/rosgraph_msgs
    ros-kinetic/std_srvs
    ros-kinetic/gateway_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/sensor_msgs

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
