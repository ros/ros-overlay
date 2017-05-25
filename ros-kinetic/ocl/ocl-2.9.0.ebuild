# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.orocos.org/ocl"
SRC_URI="https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.0-1.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/catkin
    ros-kinetic/libreadline-dev
    ros-kinetic/rtt
    ros-kinetic/netcdf
    ros-kinetic/libncurses-dev
    ros-kinetic/log4cpp
    ros-kinetic/lua-dev

"
DEPEND="${RDEPEND}
    ros-kinetic/libreadline-dev
    ros-kinetic/rtt
    ros-kinetic/netcdf
    ros-kinetic/libncurses-dev
    ros-kinetic/log4cpp
    ros-kinetic/lua-dev

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
