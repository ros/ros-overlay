# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/facontidavide/PlotJuggler"
SRC_URI="https://github.com/facontidavide/plotjuggler-release/archive/release/kinetic/plotjuggler/1.0.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/qtbase5-dev
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/ros_type_introspection
    ros-kinetic/topic_tools
    ros-kinetic/libqt5-svg-dev
    ros-kinetic/binutils
    ros-kinetic/rosbag
    ros-kinetic/rosbag_storage

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/qtbase5-dev
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/ros_type_introspection
    ros-kinetic/topic_tools
    ros-kinetic/libqt5-svg-dev
    ros-kinetic/binutils
    ros-kinetic/rosbag
    ros-kinetic/rosbag_storage

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
