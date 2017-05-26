# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="roseus_smach

     * Euslisp state machine class. it will be moved.
     * Message publisher for visualizing current state by smach_viewer.
     * Simple pickle dump script for debugging state machine.
     * Execute state machine as a action server."
HOMEPAGE="http://ros.org/wiki/roseus_smach"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_smach/1.6.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/actionlib_tutorials
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/smach
    ros-kinetic/rostest
    ros-kinetic/roseus
    ros-kinetic/smach_ros
    ros-kinetic/smach_msgs
    ros-kinetic/euslisp
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/actionlib_tutorials
    ros-kinetic/std_msgs
    ros-kinetic/smach_ros
    ros-kinetic/rostest
    ros-kinetic/smach
    ros-kinetic/roseus
    ros-kinetic/smach_msgs
    ros-kinetic/message_generation
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
