# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/laser_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_to_cloud_converter/0.3.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/libpcl-all
    ros-kinetic/pcl_ros

"
DEPEND="${RDEPEND}
    ros-kinetic/libpcl-all-dev
    ros-kinetic/pcl_conversions
    ros-kinetic/roscpp
    ros-kinetic/pcl_ros

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
