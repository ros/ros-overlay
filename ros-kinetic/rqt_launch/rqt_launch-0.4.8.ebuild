# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rqt_launch-release/archive/release/kinetic/rqt_launch/0.4.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/rqt_gui
    ros-kinetic/rqt_gui_py
    ros-kinetic/roslaunch
    ros-kinetic/python_qt_binding
    ros-kinetic/rqt_py_common
    ros-kinetic/rqt_console
"
DEPEND="
    ros-kinetic/rqt_py_common
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
