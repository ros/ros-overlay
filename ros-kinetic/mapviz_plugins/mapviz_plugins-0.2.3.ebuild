# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz_plugins/0.2.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/cv_bridge
    ros-kinetic/image_transport
    ros-kinetic/mapviz
    ros-kinetic/marti_common_msgs
    ros-kinetic/marti_nav_msgs
    ros-kinetic/marti_visualization_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pluginlib
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/stereo_msgs
    ros-kinetic/swri_image_util
    ros-kinetic/swri_math_util
    ros-kinetic/swri_route_util
    ros-kinetic/swri_transform_util
    ros-kinetic/swri_yaml_util
    ros-kinetic/tf
    ros-kinetic/visualization_msgs
    dev-qt/qtcore
    dev-qt/qtgui
    dev-qt/qtopengl
    dev-qt/qtwidgets
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-qt/qtopengl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
