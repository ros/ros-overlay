# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Interactive control for generic Twist-based robots using interactive markers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/interactive_marker_twist_server-release/archive/release/kinetic/interactive_marker_twist_server/1.1.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/visualization_msgs
    ros-kinetic/interactive_markers
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/roslint
    ros-kinetic/roslaunch
    ros-kinetic/visualization_msgs
    ros-kinetic/interactive_markers
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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
