# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/hector_slam"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam/0.3.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/hector_imu_attitude_to_tf
    ros-kinetic/hector_map_tools
    ros-kinetic/hector_compressed_map_transport
    ros-kinetic/hector_slam_launch
    ros-kinetic/hector_nav_msgs
    ros-kinetic/hector_trajectory_server
    ros-kinetic/hector_geotiff
    ros-kinetic/hector_geotiff_plugins
    ros-kinetic/hector_marker_drawing
    ros-kinetic/hector_map_server
    ros-kinetic/hector_mapping

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
