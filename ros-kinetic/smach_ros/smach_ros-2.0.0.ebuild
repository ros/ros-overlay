# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/executive_smach-release/archive/release/kinetic/smach_ros/2.0.0-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/actionlib_msgs
    ros-kinetic/std_msgs
    ros-kinetic/smach
    ros-kinetic/rospy
    ros-kinetic/rostopic
    ros-kinetic/smach_msgs
    ros-kinetic/actionlib

"
DEPEND="${RDEPEND}
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
