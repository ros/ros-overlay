# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is a set of tools for recording from and playing back ROS
    message without relying on the ROS client library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosbag_storage/1.13.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roslz4
    ros-lunar/rostime
    ros-lunar/roscpp_serialization
    ros-lunar/roscpp_traits
    ros-lunar/cpp_common
    bzip2
    libconsole-bridge-dev
    boost
"
DEPEND="
    ros-lunar/roslz4
    ros-lunar/rostime
    ros-lunar/roscpp_serialization
    ros-lunar/roscpp_traits
    ros-lunar/cpp_common
    bzip2
    libconsole-bridge-dev
    boost
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
