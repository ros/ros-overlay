# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Darknet is an open source neural network framework written in C and CUDA. It is "
HOMEPAGE="http://pjreddie.com/darknet/"
SRC_URI="https://github.com/tork-a/darknet-release/archive/release/indigo/darknet/2016.11.27-2.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="YOLO"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    media-libs/opencv
    nvidia-cuda-toolkit
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    nvidia-cuda-dev
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
