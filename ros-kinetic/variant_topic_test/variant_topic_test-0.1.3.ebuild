# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Variant topic tools testing suites."
HOMEPAGE="http://github.com/ethz-asl/ros-topic-variant"
SRC_URI="https://github.com/ethz-asl/variant-release/archive/release/kinetic/variant_topic_test/0.1.3-0.tar.gz"

LICENSE="GNU Lesser General Public License (LGPL)"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/variant_topic_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/variant_msgs
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/std_msgs
    ros-kinetic/variant_topic_tools
    ros-kinetic/geometry_msgs
    ros-kinetic/variant_msgs
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
