# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Point Grey camera driver based on libflycapture2."
HOMEPAGE="http://ros.org/wiki/pointgrey_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_driver/0.13.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/roscpp
    ros-kinetic/diagnostic_updater
    ros-kinetic/camera_info_manager
    ros-kinetic/wfov_camera_msgs
    ros-kinetic/nodelet
    ros-kinetic/image_transport
    ros-kinetic/sensor_msgs
    ros-kinetic/image_proc
    ros-kinetic/stereo_image_proc
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/image_exposure_msgs
    sys-libs/libraw1394
    =dev-libs/libusb-1.0*
"
DEPEND="${RDEPEND}
    app-arch/dpkg
    net-misc/curl
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    if [[ -e ${D}/${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
