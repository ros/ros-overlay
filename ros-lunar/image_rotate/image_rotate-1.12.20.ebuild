# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/image_rotate"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_rotate/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/tf2_geometry_msgs
    ros-lunar/roscpp
    ros-lunar/cv_bridge
    ros-lunar/image_transport
    ros-lunar/tf2_ros
    ros-lunar/nodelet
    ros-lunar/tf2
"
DEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/tf2_geometry_msgs
    ros-lunar/roscpp
    ros-lunar/nodelet
    ros-lunar/image_transport
    ros-lunar/cmake_modules
    ros-lunar/geometry_msgs
    ros-lunar/tf2_ros
    ros-lunar/cv_bridge
    ros-lunar/tf2
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
