# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/cv_camera-release/archive/release/kinetic/cv_camera/0.1.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/nodelet
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/libopencv-dev
    ros-kinetic/cv_bridge

"
DEPEND="${RDEPEND}
    ros-kinetic/roscpp
    ros-kinetic/nodelet
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/roslint
    ros-kinetic/libopencv-dev
    ros-kinetic/rostest
    ros-kinetic/cv_bridge

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
