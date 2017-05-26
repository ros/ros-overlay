# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="opt_camera"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/opt_camera/2.0.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospack
    ros-kinetic/compressed_image_transport
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_proc
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
"
DEPEND="
    ros-kinetic/rospack
    ros-kinetic/compressed_image_transport
    ros-kinetic/camera_calibration_parsers
    ros-kinetic/image_proc
    ros-kinetic/sensor_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/roslang
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
