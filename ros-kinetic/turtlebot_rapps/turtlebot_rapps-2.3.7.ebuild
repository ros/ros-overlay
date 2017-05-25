# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_rapps/2.3.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/turtlebot_follower
    ros-kinetic/turtlebot_teleop
    ros-kinetic/turtlebot_navigation
    ros-kinetic/kobuki_auto_docking
    ros-kinetic/tf
    ros-kinetic/topic_tools
    ros-kinetic/compressed_image_transport
    ros-kinetic/world_canvas_server
    ros-kinetic/warehouse_ros
    ros-kinetic/robot_pose_publisher
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
