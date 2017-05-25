# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/kinetic/osg_interactive_markers/1.0.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/osg_markers
    ros-kinetic/interactive_markers
    ros-kinetic/osg_utils
    ros-kinetic/libopenscenegraph
    ros-kinetic/visualization_msgs
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/osg_markers
    ros-kinetic/interactive_markers
    ros-kinetic/osg_utils
    ros-kinetic/libopenscenegraph
    ros-kinetic/visualization_msgs
    ros-kinetic/tf

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
