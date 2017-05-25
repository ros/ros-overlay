# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_gazebo/2.2.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/depthimage_to_laserscan
    ros-kinetic/xacro
    ros-kinetic/kobuki_gazebo_plugins
    ros-kinetic/diagnostic_aggregator
    ros-kinetic/robot_state_publisher
    ros-kinetic/turtlebot_navigation
    ros-kinetic/gazebo_ros
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/turtlebot_description
    ros-kinetic/robot_pose_ekf
    ros-kinetic/turtlebot_bringup

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
