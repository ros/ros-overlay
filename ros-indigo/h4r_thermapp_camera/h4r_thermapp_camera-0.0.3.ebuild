# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The thermapp_camera package provides a library and a node for the
  	Opgal® Ther"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Hacks4ROS-release/h4r_thermapp_camera/archive/release/indigo/h4r_thermapp_camera/0.0.3-0.tar.gz"

LICENSE="GPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/cv_bridge
    ros-indigo/sensor_msgs
    ros-indigo/roscpp
    ros-indigo/image_transport
    ros-indigo/dynamic_reconfigure
    =dev-libs/libusb-1.0*
"
DEPEND="${RDEPEND}
    =dev-libs/libusb-1.0*
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
