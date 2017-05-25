# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="rqt_image_view provides a GUI plugin for displaying images using image_transport."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_image_view-release/archive/release/lunar/rqt_image_view/0.4.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rqt_gui_cpp
    ros-lunar/rqt_gui
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/geometry_msgs
    ros-lunar/cv_bridge
"
DEPEND="
    ros-lunar/rqt_gui_cpp
    ros-lunar/rqt_gui
    ros-lunar/sensor_msgs
    ros-lunar/image_transport
    ros-lunar/geometry_msgs
    ros-lunar/cv_bridge
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
