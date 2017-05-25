# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/diagnostics_analysis"
SRC_URI="https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_analysis/1.9.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslib
    ros-kinetic/rosbag
    ros-kinetic/diagnostic_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/rostest
    ros-kinetic/roslib
    ros-kinetic/rosbag
    ros-kinetic/diagnostic_msgs

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
