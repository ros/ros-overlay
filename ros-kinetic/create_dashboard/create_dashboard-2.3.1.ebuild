# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The Create dashboard is a RQT-based plug-in for visualising data from the Create and giving easy access
    to basic functionalities."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/kinetic/create_dashboard/2.3.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/rqt_robot_dashboard
    ros-kinetic/rqt_gui
    ros-kinetic/diagnostic_msgs
    ros-kinetic/create_node
    ros-kinetic/rqt_gui_py
"
DEPEND="
    ros-kinetic/rospy
    ros-kinetic/rqt_robot_dashboard
    ros-kinetic/rqt_gui
    ros-kinetic/diagnostic_msgs
    ros-kinetic/create_node
    ros-kinetic/rqt_gui_py
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
