# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_rapps/2.0.11-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roch_teleop
    ros-kinetic/roch_navigation
    ros-kinetic/roch_follower
    ros-kinetic/compressed_image_transport
    ros-kinetic/roch_bringup
    ros-kinetic/tf
    ros-kinetic/topic_tools
    ros-kinetic/world_canvas_server
    ros-kinetic/warehouse_ros
    ros-kinetic/nodelet
    ros-kinetic/robot_pose_publisher

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
