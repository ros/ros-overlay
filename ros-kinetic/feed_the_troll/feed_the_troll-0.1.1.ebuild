# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/feed_the_troll-release/archive/release/kinetic/feed_the_troll/0.1.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/python-termcolor
    ros-kinetic/rosgraph
    ros-kinetic/rocon_python_utils
    ros-kinetic/unique_id
    ros-kinetic/uuid_msgs
    ros-kinetic/rospy
    ros-kinetic/rocon_console
    ros-kinetic/feed_the_troll_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/python-termcolor
    ros-kinetic/rosgraph
    ros-kinetic/rostest
    ros-kinetic/rocon_python_utils
    ros-kinetic/unique_id
    ros-kinetic/uuid_msgs
    ros-kinetic/rospy
    ros-kinetic/rocon_console
    ros-kinetic/feed_the_troll_msgs

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
