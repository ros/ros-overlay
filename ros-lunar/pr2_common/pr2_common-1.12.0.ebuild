# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pr2_common-release/archive/release/lunar/pr2_common/1.12.0-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/pr2_machine
    ros-lunar/pr2_msgs
    ros-lunar/pr2_description
    ros-lunar/pr2_dashboard_aggregator
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
