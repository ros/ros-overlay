# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz/0.2.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/rqt_gui
    ros-kinetic/libqt5-widgets
    ros-kinetic/std_srvs
    ros-kinetic/libglew-dev
    ros-kinetic/pluginlib
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/libqt5-opengl
    ros-kinetic/glut
    ros-kinetic/message_runtime
    ros-kinetic/image_transport
    ros-kinetic/tf
    ros-kinetic/libqt5-gui
    ros-kinetic/rosapi
    ros-kinetic/swri_yaml_util
    ros-kinetic/libxi-dev
    ros-kinetic/swri_transform_util
    ros-kinetic/roscpp
    ros-kinetic/cv_bridge
    ros-kinetic/libxmu-dev
    ros-kinetic/libqt5-core
    ros-kinetic/marti_common_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/marti_common_msgs
    ros-kinetic/glut
    ros-kinetic/swri_yaml_util
    ros-kinetic/swri_transform_util
    ros-kinetic/roscpp
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/cv_bridge
    ros-kinetic/rqt_gui
    ros-kinetic/tf
    ros-kinetic/libqt5-opengl-dev
    ros-kinetic/libqt5-core
    ros-kinetic/libqt5-widgets
    ros-kinetic/image_transport
    ros-kinetic/message_generation
    ros-kinetic/rosapi
    ros-kinetic/libxi-dev
    ros-kinetic/libqt5-opengl
    ros-kinetic/libxmu-dev
    ros-kinetic/std_srvs
    ros-kinetic/libglew-dev
    ros-kinetic/pluginlib
    ros-kinetic/libqt5-gui

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
