# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The agile_grasp ROS package. AGILE stands for Antipodal Grasp Identification and"
HOMEPAGE="http://wiki.ros.org/agile_grasp"
SRC_URI="https://github.com/atenpas/agile_grasp-release/archive/release/indigo/agile_grasp/0.7.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/geometry_msgs
    ros-indigo/message_runtime
    ros-indigo/roscpp
    ros-indigo/eigen_conversions
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/visualization_msgs
    ros-indigo/pcl_conversions
    ros-indigo/cv_bridge
    virtual/lapack
    sci-libs/pcl
"
DEPEND="${RDEPEND}
    ros-indigo/message_generation
    sci-libs/pcl
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
