# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/hector_worldmodel_geotiff_plugins"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_worldmodel_geotiff_plugins/0.3.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/hector_geotiff
    ros-kinetic/hector_worldmodel_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/hector_geotiff
    ros-kinetic/hector_worldmodel_msgs

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
