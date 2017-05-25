# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/openni2_camera-release/archive/release/kinetic/openni2_camera/0.2.7-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/message_runtime
    ros-kinetic/libopenni2-dev
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/nodelet

"
DEPEND="${RDEPEND}
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/libopenni2-dev
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/message_generation
    ros-kinetic/nodelet

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
