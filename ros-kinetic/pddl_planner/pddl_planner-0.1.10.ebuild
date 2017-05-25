# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/pddl_planner/0.1.10-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/pddl_msgs
    ros-kinetic/actionlib
    ros-kinetic/lpg_planner
    ros-kinetic/rospy
    ros-kinetic/ff
    ros-kinetic/time
    ros-kinetic/ffha
    ros-kinetic/downward

"
DEPEND="${RDEPEND}
    ros-kinetic/rospy
    ros-kinetic/actionlib
    ros-kinetic/pddl_msgs

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
