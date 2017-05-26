# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The tensorflow_ros_rqt package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/tensorflow_ros_rqt/0.0.4-0.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rqt_gui_py
    ros-kinetic/rqt_gui
    ros-kinetic/tensorflow_ros
"
DEPEND="
    ros-kinetic/rqt_gui_py
    ros-kinetic/rqt_gui
    ros-kinetic/tensorflow_ros
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
