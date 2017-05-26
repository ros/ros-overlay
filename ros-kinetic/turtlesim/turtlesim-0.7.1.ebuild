# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="turtlesim is a tool made for teaching ROS and ROS packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/kinetic/turtlesim/0.7.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/rostime
    ros-kinetic/rosconsole
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    dev-qt/qtgui
    dev-qt/qtcore
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/rostime
    ros-kinetic/rosconsole
    ros-kinetic/roslib
    ros-kinetic/roscpp
    ros-kinetic/roscpp_serialization
    ros-kinetic/message_generation
    ros-kinetic/geometry_msgs
    ros-kinetic/std_msgs
    dev-qt/qtcore
    dev-qt/qtcore
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
