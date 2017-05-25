# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/nav2d_tutorials"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/kinetic/nav2d_tutorials/0.3.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav2d_navigator
    ros-kinetic/nav2d_operator
    ros-kinetic/nav2d_localizer
    ros-kinetic/nav2d_exploration
    ros-kinetic/nav2d_msgs
    ros-kinetic/nav2d_karto
    ros-kinetic/nav2d_remote

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
