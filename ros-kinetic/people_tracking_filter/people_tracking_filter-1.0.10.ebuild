# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/people_tracking_filter"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/kinetic/people_tracking_filter/1.0.10-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/bfl
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/message_filters
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/bfl
    ros-kinetic/geometry_msgs
    ros-kinetic/people_msgs
    ros-kinetic/tf

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
