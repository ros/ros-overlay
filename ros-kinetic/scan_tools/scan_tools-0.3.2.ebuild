# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Laser scan processing tools."
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_tools/0.3.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "BSD" "LGPLv3" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/laser_ortho_projector
    ros-kinetic/laser_scan_matcher
    ros-kinetic/laser_scan_sparsifier
    ros-kinetic/laser_scan_splitter
    ros-kinetic/ncd_parser
    ros-kinetic/polar_scan_matcher
    ros-kinetic/scan_to_cloud_converter
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
