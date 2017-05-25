# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/multires_image/0.2.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/libqt5-widgets
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/tf
    ros-kinetic/libopencv-dev
    ros-kinetic/libqt5-gui
    ros-kinetic/swri_yaml_util
    ros-kinetic/mapviz
    ros-kinetic/swri_transform_util
    ros-kinetic/libqt5-opengl
    ros-kinetic/libqt5-core
    ros-kinetic/swri_math_util

"
DEPEND="${RDEPEND}
    ros-kinetic/libqt5-widgets
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/tf
    ros-kinetic/libopencv-dev
    ros-kinetic/libqt5-gui
    ros-kinetic/swri_yaml_util
    ros-kinetic/mapviz
    ros-kinetic/swri_transform_util
    ros-kinetic/libqt5-opengl-dev
    ros-kinetic/libqt5-opengl
    ros-kinetic/libqt5-core
    ros-kinetic/swri_math_util

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
