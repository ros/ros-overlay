# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package depends on a recent version of the Kinematics and Dynamics
    Libr"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/smits/orocos-kdl-release/archive/release/lunar/orocos_kinematics_dynamics/1.3.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/orocos_kdl
    ros-lunar/python_orocos_kdl
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    mkdir ${WORKDIR}/${P}/build
    mkdir ${WORKDIR}/${P}/devel
    cd ${WORKDIR}/${P}/build
    cmake -DCMAKE_INSTALL_PREFIX=/${ROS_PREFIX} -DCMAKE_PREFIX_PATH=/${ROS_PREFIX} -DCATKIN_DEVEL_PREFIX=../devel ..
    make -j$(nproc) -l$(nproc) || die
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

    cd ${P}/build
    make install || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
