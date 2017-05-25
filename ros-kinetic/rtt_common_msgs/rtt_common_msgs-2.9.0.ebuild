# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_common_msgs/2.9.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rtt_diagnostic_msgs
    ros-kinetic/rtt_shape_msgs
    ros-kinetic/rtt_stereo_msgs
    ros-kinetic/rtt_visualization_msgs
    ros-kinetic/rtt_nav_msgs
    ros-kinetic/rtt_actionlib_msgs
    ros-kinetic/rtt_geometry_msgs
    ros-kinetic/rtt_sensor_msgs
    ros-kinetic/rtt_trajectory_msgs

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
