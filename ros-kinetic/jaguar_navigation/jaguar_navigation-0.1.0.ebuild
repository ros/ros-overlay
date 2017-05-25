# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gstavrinos/jaguar-release/archive/release/kinetic/jaguar_navigation/0.1.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/move_base
    ros-kinetic/map_server
    ros-kinetic/dwa_local_planner
    ros-kinetic/frontier_exploration
    ros-kinetic/navfn
    ros-kinetic/gmapping
    ros-kinetic/amcl
    ros-kinetic/base_local_planner

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch

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
