# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/mapviz/0.0.7-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/image_transport
    ros-indigo/marti_common_msgs
    ros-indigo/message_runtime
    ros-indigo/pluginlib
    ros-indigo/rosapi
    ros-indigo/roscpp
    ros-indigo/rqt_gui
    ros-indigo/rqt_gui_cpp
    ros-indigo/std_srvs
    ros-indigo/swri_transform_util
    ros-indigo/swri_yaml_util
    ros-indigo/tf
    media-libs/freeglut
    media-libs/glew
    media-libs/opencv
    dev-qt/qtcore
    dev-qt/qtopengl
    x11-libs/libXmu
    dev-qt/qtcore
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    ros-indigo/message_generation
    dev-qt/qtcore
    dev-qt/qtopengl
    virtual/pkgconfig
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
