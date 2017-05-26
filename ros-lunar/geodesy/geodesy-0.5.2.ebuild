# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Python and C++ interfaces for manipulating geodetic coordinates."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geodesy/0.5.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/unique_id
    ros-lunar/tf
    ros-lunar/uuid_msgs
    ros-lunar/geographic_msgs
    ros-lunar/sensor_msgs
    dev-python/pyproj
"
DEPEND="${RDEPEND}
    ros-lunar/angles
    dev-python/catkin_pkg
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
