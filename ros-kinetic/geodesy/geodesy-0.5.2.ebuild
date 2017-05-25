# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geodesy/0.5.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/geographic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/python-pyproj
    ros-kinetic/geometry_msgs
    ros-kinetic/uuid_msgs
    ros-kinetic/tf
    ros-kinetic/unique_id

"
DEPEND="${RDEPEND}
    ros-kinetic/geographic_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/python-catkin-pkg
    ros-kinetic/geometry_msgs
    ros-kinetic/angles
    ros-kinetic/uuid_msgs
    ros-kinetic/tf
    ros-kinetic/unique_id

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
