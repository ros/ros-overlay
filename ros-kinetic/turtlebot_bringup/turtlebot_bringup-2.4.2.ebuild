# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/kobuki_bumper2pc
    ros-kinetic/freenect_launch
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/zeroconf_avahi
    ros-kinetic/kobuki_capabilities
    ros-kinetic/robot_state_publisher
    ros-kinetic/turtlebot_capabilities
    ros-kinetic/kobuki_safety_controller
    ros-kinetic/laptop_battery_monitor
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/create_node
    ros-kinetic/rocon_app_manager
    ros-kinetic/astra_launch
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/kobuki_node
    ros-kinetic/realsense_camera
    ros-kinetic/openni2_launch
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/robot_pose_ekf
    ros-kinetic/turtlebot_description

"
DEPEND="${RDEPEND}

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
