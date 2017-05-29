# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Contains nodelets for processing depth images such as those
     produced by Ope"
HOMEPAGE="http://ros.org/wiki/depth_image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/indigo/depth_image_proc/1.12.20-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/image_geometry
    ros-indigo/tf2
    ros-indigo/nodelet
    ros-indigo/tf2_ros
    ros-indigo/image_transport
    ros-indigo/eigen_conversions
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-indigo/message_filters
    ros-indigo/cmake_modules
    ros-indigo/sensor_msgs
    ros-indigo/stereo_msgs
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
