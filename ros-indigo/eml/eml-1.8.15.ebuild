# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This is an implementation of the EtherCAT master protocol for the PR2
      robo"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/eml-release/archive/release/indigo/eml/1.8.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Binary Only"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/catkin
"
DEPEND="${RDEPEND}
    dev-util/cmake
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
