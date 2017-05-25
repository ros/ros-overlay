# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_interactions/0.3.2-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/genpy
    ros-kinetic/rocon_python_utils
    ros-kinetic/std_msgs
    ros-kinetic/rocon_uri
    ros-kinetic/python-rospkg
    ros-kinetic/rocon_app_manager_msgs
    ros-kinetic/rospy
    ros-kinetic/rocon_bubble_icons
    ros-kinetic/rocon_std_msgs
    ros-kinetic/rocon_python_comms
    ros-kinetic/rocon_console
    ros-kinetic/rocon_interaction_msgs
    ros-kinetic/unique_id
    ros-kinetic/rocon_icons

"
DEPEND="${RDEPEND}
    ros-kinetic/roslint
    ros-kinetic/python-catkin-pkg
    ros-kinetic/rostest

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
