# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Filters the robot's body out of point clouds."
HOMEPAGE="http://ros.org/wiki/pr2_navigation_self_filter"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/pr2_navigation_self_filter/0.1.27-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/filters
    ros-indigo/visualization_msgs
    ros-indigo/resource_retriever
    ros-indigo/pcl_ros
    ros-indigo/sensor_msgs
    ros-indigo/roscpp
    ros-indigo/urdf
    ros-indigo/tf
    sci-physics/bullet
    media-libs/assimp
"
DEPEND="${RDEPEND}
    media-libs/assimp
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
