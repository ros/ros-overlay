# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Clearpath Husky installation and integration package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/husky_robot-release/archive/release/indigo/husky_bringup/0.2.6-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/husky_base
    ros-indigo/husky_control
    ros-indigo/husky_description
    ros-indigo/imu_filter_madgwick
    ros-indigo/imu_transformer
    ros-indigo/lms1xx
    ros-indigo/microstrain_3dmgx2_imu
    ros-indigo/nmea_comms
    ros-indigo/nmea_navsat_driver
    ros-indigo/robot_localization
    ros-indigo/robot_upstart
    ros-indigo/tf
    ros-indigo/tf2_ros
    ros-indigo/um6
    ros-indigo/um7
    ros-indigo/ur_modern_driver
    dev-libs/scipy
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/roslaunch
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
