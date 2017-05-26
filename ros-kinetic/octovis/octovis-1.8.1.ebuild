# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer. See
  http://octomap.github.io for details."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/octomap-release/archive/release/kinetic/octovis/1.8.1-0.tar.gz"

LICENSE="GPLv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/catkin
    ros-kinetic/octomap
    dev-qt/qtopengl
    x11-libs/libQGLViewer
    dev-qt/qtgui
"
DEPEND="
    ros-kinetic/octomap
    dev-qt/qtopengl
    x11-libs/libQGLViewer
    dev-qt/qtcore
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
