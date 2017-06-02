# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains drivers for the ethercat system and the peripherals
    that"
HOMEPAGE="http://ros.org/wiki/pr2_ethercat_drivers"
SRC_URI="https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/indigo/pr2_ethercat_drivers/1.8.16-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( "BSD" "GPL" )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/ethercat_hardware
    ros-indigo/fingertip_pressure
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
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
