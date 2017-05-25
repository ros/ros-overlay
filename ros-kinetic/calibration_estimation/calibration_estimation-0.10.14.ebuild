# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/calibration_estimation"
SRC_URI="https://github.com/ros-gbp/calibration-release/archive/release/kinetic/calibration_estimation/0.10.14-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-matplotlib
    ros-kinetic/sensor_msgs
    ros-kinetic/python-scipy
    ros-kinetic/rostest
    ros-kinetic/rospy
    ros-kinetic/calibration_msgs
    ros-kinetic/visualization_msgs
    ros-kinetic/urdfdom_py
    ros-kinetic/python_orocos_kdl

"
DEPEND="${RDEPEND}

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
