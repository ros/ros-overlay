# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosbag_storage/1.12.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roslz4
    ros-kinetic/bzip2
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp_traits
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/cpp_common
    ros-kinetic/boost

"
DEPEND="${RDEPEND}
    ros-kinetic/roslz4
    ros-kinetic/bzip2
    ros-kinetic/rostime
    ros-kinetic/roscpp_serialization
    ros-kinetic/roscpp_traits
    ros-kinetic/libconsole-bridge-dev
    ros-kinetic/cpp_common
    ros-kinetic/boost

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
