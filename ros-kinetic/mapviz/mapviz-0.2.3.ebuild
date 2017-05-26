# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz/0.2.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/image_transport
    ros-kinetic/marti_common_msgs
    ros-kinetic/rqt_gui
    ros-kinetic/swri_yaml_util
    ros-kinetic/cv_bridge
    ros-kinetic/roscpp
    ros-kinetic/message_runtime
    ros-kinetic/tf
    ros-kinetic/rosapi
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/swri_transform_util
    ros-kinetic/pluginlib
    dev-qt/qtwidgets
    x11-libs/libXmu
    media-libs/glew
    dev-qt/qtgui
    dev-qt/qtcore
    dev-qt/qtopengl
    x11-libs/libXi
    media-libs/freeglut
"
DEPEND="
    ros-kinetic/std_srvs
    ros-kinetic/marti_common_msgs
    ros-kinetic/roscpp
    ros-kinetic/rqt_gui_cpp
    ros-kinetic/message_generation
    ros-kinetic/rosapi
    ros-kinetic/swri_transform_util
    ros-kinetic/image_transport
    ros-kinetic/swri_yaml_util
    ros-kinetic/cv_bridge
    ros-kinetic/tf
    ros-kinetic/pluginlib
    ros-kinetic/rqt_gui
    media-libs/glew
    dev-qt/qtgui
    dev-qt/qtopengl
    x11-libs/libXi
    dev-qt/qtwidgets
    dev-qt/qtopengl
    dev-qt/qtcore
    x11-libs/libXmu
    media-libs/freeglut
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
