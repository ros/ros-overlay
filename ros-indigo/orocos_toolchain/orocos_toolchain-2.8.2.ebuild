# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package provides the entire orocos_toolchain"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/orocos_toolchain-release/archive/release/indigo/orocos_toolchain/2.8.2-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( GPL-2 LGPL-2 CeCILL-B GPL-2  )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/catkin
    ros-indigo/log4cpp
    ros-indigo/ocl
    ros-indigo/orogen
    ros-indigo/rtt
    ros-indigo/rtt_typelib
    ros-indigo/typelib
    ros-indigo/utilrb
"
DEPEND="${RDEPEND}
    dev-python/catkin
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
