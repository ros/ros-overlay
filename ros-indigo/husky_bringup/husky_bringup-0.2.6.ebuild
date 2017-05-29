# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/husky_robot-release/archive/release/indigo/husky_bringup/0.2.6-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/husky_description
    ros-indigo/imu_transformer
    ros-indigo/robot_localization
    ros-indigo/um6
    ros-indigo/um7
    ros-indigo/ur_modern_driver
    ros-indigo/imu_filter_madgwick
    ros-indigo/nmea_comms
    ros-indigo/robot_upstart
    ros-indigo/husky_control
    ros-indigo/tf2_ros
    ros-indigo/nmea_navsat_driver
    ros-indigo/husky_base
    ros-indigo/tf
    ros-indigo/lms1xx
    dev-libs/scipy
"
DEPEND="${RDEPEND}
    ros-indigo/roslaunch
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
