# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/kinetic/create_dashboard/2.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rqt_robot_dashboard
    ros-kinetic/rqt_gui
    ros-kinetic/rospy
    ros-kinetic/create_node
    ros-kinetic/rqt_gui_py
    ros-kinetic/diagnostic_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/rqt_robot_dashboard
    ros-kinetic/rqt_gui
    ros-kinetic/rospy
    ros-kinetic/create_node
    ros-kinetic/rqt_gui_py
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
