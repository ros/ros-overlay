# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/mapviz_plugins/0.0.7-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pluginlib
    ros-indigo/swri_math_util
    ros-indigo/roscpp
    ros-indigo/tf
    ros-indigo/std_msgs
    ros-indigo/gps_common
    ros-indigo/image_transport
    ros-indigo/swri_image_util
    ros-indigo/marti_common_msgs
    ros-indigo/swri_transform_util
    ros-indigo/swri_route_util
    ros-indigo/marti_nav_msgs
    ros-indigo/nav_msgs
    ros-indigo/marti_visualization_msgs
    ros-indigo/cv_bridge
    ros-indigo/swri_yaml_util
    ros-indigo/visualization_msgs
    ros-indigo/sensor_msgs
    ros-indigo/stereo_msgs
    ros-indigo/mapviz
    dev-qt/qtcore
    dev-qt/qtopengl
    dev-qt/qtcore
"
DEPEND="${RDEPEND}
    dev-qt/qtcore
    dev-qt/qtopengl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
