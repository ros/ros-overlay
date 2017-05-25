# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/underwater_vehicle_dynamics/1.4.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/rospy
    ros-kinetic/tf
    ros-kinetic/geometry_msgs
    ros-kinetic/tf_conversions

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
