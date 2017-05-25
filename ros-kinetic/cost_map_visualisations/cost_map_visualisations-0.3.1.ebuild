# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_visualisations/0.3.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_command_line
    ros-kinetic/cost_map_ros
    ros-kinetic/ecl_console
    ros-kinetic/cost_map_core
    ros-kinetic/ecl_build
    ros-kinetic/cost_map_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/ecl_command_line
    ros-kinetic/cost_map_ros
    ros-kinetic/ecl_console
    ros-kinetic/cost_map_core
    ros-kinetic/ecl_build
    ros-kinetic/cost_map_msgs

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
