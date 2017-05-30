# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras."
HOMEPAGE="http://www.ros.org/wiki/prosilica_camera"
SRC_URI="https://github.com/ros-drivers-gbp/prosilica_driver-release/archive/release/indigo/prosilica_camera/1.9.4-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/dynamic_reconfigure
    ros-indigo/self_test
    ros-indigo/image_transport
    ros-indigo/prosilica_gige_sdk
    ros-indigo/camera_calibration_parsers
    ros-indigo/roscpp
    ros-indigo/polled_camera
    ros-indigo/diagnostic_msgs
    ros-indigo/std_msgs
    ros-indigo/driver_base
    ros-indigo/sensor_msgs
    ros-indigo/diagnostic_updater
"
DEPEND="${RDEPEND}
    ros-indigo/rosconsole
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
