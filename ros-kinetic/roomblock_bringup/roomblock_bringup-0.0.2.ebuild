# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/roomblock-release/archive/release/kinetic/roomblock_bringup/0.0.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rplidar_ros
    ros-kinetic/rviz
    ros-kinetic/controller_manager
    ros-kinetic/joy
    ros-kinetic/robot_state_publisher
    ros-kinetic/python-serial
    ros-kinetic/roomblock_description
    ros-kinetic/teleop_twist_joy
    ros-kinetic/image_transport
    ros-kinetic/create_node
    ros-kinetic/robot_pose_ekf

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
