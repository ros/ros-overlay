# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Tests for MAVROS package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/0.19.0-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/mavros
    ros-kinetic/roscpp
    ros-kinetic/mavros_extras
    ros-kinetic/std_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/control_toolbox
    dev-cpp/eigen
"
DEPEND="
    ros-kinetic/mavros
    ros-kinetic/cmake_modules
    ros-kinetic/angles
    ros-kinetic/roscpp
    ros-kinetic/mavros_extras
    ros-kinetic/std_msgs
    ros-kinetic/geometry_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/eigen_conversions
    ros-kinetic/control_toolbox
    dev-cpp/eigen
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
