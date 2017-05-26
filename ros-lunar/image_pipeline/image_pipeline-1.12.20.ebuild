# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_pipeline/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/image_publisher
    ros-lunar/stereo_image_proc
    ros-lunar/depth_image_proc
    ros-lunar/image_view
    ros-lunar/image_proc
    ros-lunar/image_rotate
    ros-lunar/camera_calibration
"
DEPEND="
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
