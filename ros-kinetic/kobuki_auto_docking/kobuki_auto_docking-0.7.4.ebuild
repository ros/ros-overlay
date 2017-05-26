# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Automatic docking for Kobuki:
	    Users owning a docking station for Kobuki can use this tool to let Kobuki find its nest autonomously."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_auto_docking/0.7.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/kobuki_dock_drive
    ros-kinetic/rospy
    ros-kinetic/kobuki_msgs
    ros-kinetic/nodelet
    ros-kinetic/yocs_cmd_vel_mux
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/kdl_conversions
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/actionlib_msgs
    ros-kinetic/ecl_geometry
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/kobuki_dock_drive
    ros-kinetic/rospy
    ros-kinetic/kobuki_msgs
    ros-kinetic/nodelet
    ros-kinetic/message_filters
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/kdl_conversions
    ros-kinetic/ecl_threads
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/ecl_linear_algebra
    ros-kinetic/actionlib_msgs
    ros-kinetic/ecl_geometry
    ros-kinetic/actionlib
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
