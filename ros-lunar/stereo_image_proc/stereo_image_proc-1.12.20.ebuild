# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Stereo and single image rectification and disparity processing."
HOMEPAGE="http://www.ros.org/wiki/stereo_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/stereo_image_proc/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/message_filters
    ros-lunar/image_transport
    ros-lunar/sensor_msgs
    ros-lunar/nodelet
    ros-lunar/dynamic_reconfigure
    ros-lunar/image_geometry
    ros-lunar/stereo_msgs
    ros-lunar/cv_bridge
    ros-lunar/image_proc
"
DEPEND="
    ros-lunar/message_filters
    ros-lunar/image_transport
    ros-lunar/sensor_msgs
    ros-lunar/nodelet
    ros-lunar/dynamic_reconfigure
    ros-lunar/image_geometry
    ros-lunar/stereo_msgs
    ros-lunar/cv_bridge
    ros-lunar/image_proc
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
