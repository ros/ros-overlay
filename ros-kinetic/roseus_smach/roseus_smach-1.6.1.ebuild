# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/roseus_smach"
SRC_URI="https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_smach/1.6.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/smach_ros
    ros-kinetic/roseus
    ros-kinetic/euslisp
    ros-kinetic/actionlib
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/smach
    ros-kinetic/rostest
    ros-kinetic/actionlib_tutorials
    ros-kinetic/smach_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/smach_ros
    ros-kinetic/roseus
    ros-kinetic/actionlib
    ros-kinetic/std_msgs
    ros-kinetic/smach
    ros-kinetic/rostest
    ros-kinetic/actionlib_tutorials
    ros-kinetic/smach_msgs
    ros-kinetic/message_generation

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
