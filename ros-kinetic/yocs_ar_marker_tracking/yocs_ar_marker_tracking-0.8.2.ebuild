# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/yocs_ar_marker_tracking"
SRC_URI="https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_ar_marker_tracking/0.8.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/yocs_math_toolkit
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/yaml-cpp

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/ar_track_alvar_msgs
    ros-kinetic/yocs_math_toolkit
    ros-kinetic/sensor_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/yaml-cpp

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
