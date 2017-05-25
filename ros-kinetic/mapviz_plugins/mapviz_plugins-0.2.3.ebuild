# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz_plugins/0.2.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/marti_common_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/swri_image_util
    ros-kinetic/swri_yaml_util
    ros-kinetic/swri_transform_util
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/libqt5-opengl
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/libqt5-core
    ros-kinetic/libqt5-widgets
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/mapviz
    ros-kinetic/cv_bridge
    ros-kinetic/marti_nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/marti_visualization_msgs
    ros-kinetic/libqt5-gui
    ros-kinetic/swri_route_util
    ros-kinetic/swri_math_util

"
DEPEND="${RDEPEND}
    ros-kinetic/marti_common_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/swri_image_util
    ros-kinetic/swri_yaml_util
    ros-kinetic/swri_transform_util
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/libqt5-opengl
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/libqt5-opengl-dev
    ros-kinetic/libqt5-core
    ros-kinetic/libqt5-widgets
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/image_transport
    ros-kinetic/mapviz
    ros-kinetic/cv_bridge
    ros-kinetic/marti_nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/marti_visualization_msgs
    ros-kinetic/libqt5-gui
    ros-kinetic/swri_route_util
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
