# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz_plugins/0.2.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/pluginlib
    ros-kinetic/swri_math_util
    ros-kinetic/roscpp
    ros-kinetic/tf
    ros-kinetic/std_msgs
    ros-kinetic/image_transport
    ros-kinetic/swri_image_util
    ros-kinetic/marti_common_msgs
    ros-kinetic/swri_transform_util
    ros-kinetic/swri_route_util
    ros-kinetic/marti_nav_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/marti_visualization_msgs
    ros-kinetic/cv_bridge
    ros-kinetic/swri_yaml_util
    ros-kinetic/visualization_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/mapviz
    dev-qt/qtopengl
    dev-qt/qtwidgets
    dev-qt/qtgui
    dev-qt/qtcore
"
DEPEND="${RDEPEND}
    dev-qt/qtopengl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
