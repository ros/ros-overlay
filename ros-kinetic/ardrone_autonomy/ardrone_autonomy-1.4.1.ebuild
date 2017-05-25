# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/kinetic/ardrone_autonomy/1.4.1-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/tf

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/git
    ros-kinetic/image_transport
    ros-kinetic/roscpp
    ros-kinetic/libxml2
    ros-kinetic/camera_info_manager
    ros-kinetic/sensor_msgs
    ros-kinetic/gtk2
    ros-kinetic/roslint
    ros-kinetic/binutils
    ros-kinetic/daemontools
    ros-kinetic/libiw-dev
    ros-kinetic/tf
    ros-kinetic/sdl
    ros-kinetic/std_srvs
    ros-kinetic/message_generation
    ros-kinetic/libudev-dev

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
