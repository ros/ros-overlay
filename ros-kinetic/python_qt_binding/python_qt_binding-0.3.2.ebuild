# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide is released under
    the LGPL.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called "Shiboken".  For PyQt,
    this is called "SIP".

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these."
HOMEPAGE="http://ros.org/wiki/python_qt_binding"
SRC_URI="https://github.com/ros-gbp/python_qt_binding-release/archive/release/kinetic/python_qt_binding/0.3.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    dev-python/PyQt5
"
DEPEND="
    ros-kinetic/rosbuild
    dev-qt/qtcore
    dev-python/PyQt5
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
