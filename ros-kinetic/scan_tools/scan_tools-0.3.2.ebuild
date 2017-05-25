# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_tools/0.3.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/laser_ortho_projector
    ros-kinetic/laser_scan_matcher
    ros-kinetic/laser_scan_sparsifier
    ros-kinetic/polar_scan_matcher
    ros-kinetic/ncd_parser
    ros-kinetic/laser_scan_splitter
    ros-kinetic/scan_to_cloud_converter

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
