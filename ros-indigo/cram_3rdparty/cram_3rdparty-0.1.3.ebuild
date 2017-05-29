# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Various 3rd party Common LISP packages for the CRAM framework."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/cram_3rdparty-release/archive/release/indigo/cram_3rdparty/0.1.3-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/lisp_unit
    ros-indigo/gsd
    ros-indigo/trivial_garbage
    ros-indigo/cl_utilities
    ros-indigo/cl_store
    ros-indigo/synchronization_tools
    ros-indigo/fiveam
    ros-indigo/trivial_gray_streams
    ros-indigo/yason
    ros-indigo/alexandria
    ros-indigo/split_sequence
    ros-indigo/gsll
    ros-indigo/babel
    ros-indigo/cffi
    ros-indigo/trivial_features
"
DEPEND="${RDEPEND}
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
