# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This stack contains all descriptions, drivers and bringup facilities for Neuronics Katana 450 arm."
HOMEPAGE="http://ros.org/wiki/katana_driver"
SRC_URI="https://github.com/uos-gbp/katana_driver-release/archive/release/lunar/katana_driver/1.0.7-0.tar.gz"

LICENSE="BSD, GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/katana_description
    ros-lunar/kni
    ros-lunar/katana
    ros-lunar/katana_tutorials
    ros-lunar/katana_msgs
    ros-lunar/katana_arm_gazebo
    ros-lunar/katana_moveit_ikfast_plugin
    ros-lunar/katana_teleop
    ros-lunar/katana_gazebo_plugins
"
DEPEND="${RDEPEND}
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
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
