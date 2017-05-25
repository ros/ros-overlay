# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://github.com/eBay/bayesian-belief-networks"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/bayesian_belief_networks/2.0.20-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/rospy

"
DEPEND="${RDEPEND}
    ros-kinetic/message_generation
    ros-kinetic/std_msgs
    ros-kinetic/git
    ros-kinetic/rospy
    ros-kinetic/mk

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
