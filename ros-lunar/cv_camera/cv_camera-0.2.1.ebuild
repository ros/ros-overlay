# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="cv_camera uses OpenCV capture object to capture camera image.
  This supports ca"
HOMEPAGE="http://wiki.ros.org/cv_camera"
SRC_URI="https://github.com/OTL/cv_camera-release/archive/release/lunar/cv_camera/0.2.1-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/camera_info_manager
    ros-lunar/cv_bridge
    ros-lunar/image_transport
    ros-lunar/nodelet
    ros-lunar/opencv3
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
    ros-lunar/roslint
    ros-lunar/rostest
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
