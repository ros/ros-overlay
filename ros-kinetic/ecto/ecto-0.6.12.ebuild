# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://plasmodic.github.io/ecto/"
SRC_URI="https://github.com/ros-gbp/ecto-release/archive/release/kinetic/ecto/0.6.12-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python
    ros-kinetic/xdot
    ros-kinetic/boost

"
DEPEND="${RDEPEND}
    ros-kinetic/python
    ros-kinetic/boost

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
