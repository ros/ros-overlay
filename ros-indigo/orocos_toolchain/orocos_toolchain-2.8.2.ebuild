# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides the entire orocos_toolchain"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/orocos_toolchain-release/archive/release/indigo/orocos_toolchain/2.8.2-0.tar.gz"

LICENSE="GPL v2 + linking exception, LGPL v2, CeCILL-B, GPL v2 or later,"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/rtt
    ros-indigo/orogen
    ros-indigo/log4cpp
    ros-indigo/utilrb
    ros-indigo/rtt_typelib
    ros-indigo/catkin
    ros-indigo/ocl
    ros-indigo/typelib
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
