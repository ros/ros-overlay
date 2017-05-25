# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://www.ros.org/wiki/openni_camera"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/kinetic/openni_camera/1.9.5-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roscpp
    ros-kinetic/libopenni-dev
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/nodelet
    ros-kinetic/log4cxx

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roscpp
    ros-kinetic/libopenni-dev
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/libusb-1.0-dev
    ros-kinetic/nodelet
    ros-kinetic/log4cxx

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
