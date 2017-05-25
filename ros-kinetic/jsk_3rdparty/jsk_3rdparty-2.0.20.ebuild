# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.0.20-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nlopt
    ros-kinetic/slic
    ros-kinetic/rospatlite
    ros-kinetic/julius
    ros-kinetic/libcmt
    ros-kinetic/rosping
    ros-kinetic/mini_maxwell
    ros-kinetic/libsiftfast
    ros-kinetic/assimp_devel
    ros-kinetic/opt_camera
    ros-kinetic/voice_text
    ros-kinetic/bayesian_belief_networks
    ros-kinetic/ff
    ros-kinetic/ffha
    ros-kinetic/pgm_learner
    ros-kinetic/downward

"
DEPEND="${RDEPEND}

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
