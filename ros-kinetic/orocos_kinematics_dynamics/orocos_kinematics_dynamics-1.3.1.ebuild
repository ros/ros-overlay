# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/smits/orocos-kdl-release/archive/release/kinetic/orocos_kinematics_dynamics/1.3.1-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/python_orocos_kdl
    ros-kinetic/orocos_kdl
"
DEPEND="
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
