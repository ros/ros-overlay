# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Provides conversions from PCL data types and ROS message types"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pcl_conversions-release/archive/release/lunar/pcl_conversions/0.2.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/pcl_msgs
    ros-lunar/std_msgs
    libpcl-all-dev
    libpcl-all
"
DEPEND="
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/pcl_msgs
    ros-lunar/std_msgs
    ros-lunar/cmake_modules
    libpcl-all-dev
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
