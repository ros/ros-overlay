# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Point Grey camera driver based on libflycapture2."
HOMEPAGE="http://ros.org/wiki/pointgrey_camera_driver"
SRC_URI="https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/indigo/pointgrey_camera_driver/0.12.2-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/camera_info_manager
    ros-indigo/sensor_msgs
    ros-indigo/image_exposure_msgs
    ros-indigo/wfov_camera_msgs
    ros-indigo/image_proc
    ros-indigo/roscpp
    ros-indigo/image_transport
    ros-indigo/diagnostic_updater
    ros-indigo/nodelet
    ros-indigo/dynamic_reconfigure
    =dev-libs/libusb-1.0*
    sys-libs/libraw1394
"
DEPEND="${RDEPEND}
    ros-indigo/roslint
    app-arch/dpkg
    net-misc/curl
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
