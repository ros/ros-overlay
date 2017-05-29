# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains an URDF description of the Katana arm and all supporting m"
HOMEPAGE="http://ros.org/wiki/katana_description"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_description/1.1.1-0.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/transmission_interface
    ros-lunar/urdf
"
DEPEND="${RDEPEND}
    ros-lunar/convex_decomposition
    ros-lunar/ivcon
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    /usr/bin/catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
