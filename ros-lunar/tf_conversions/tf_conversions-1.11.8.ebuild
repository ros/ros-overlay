# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a set of conversion functions to convert
common tf datatypes (point, vector, pose, etc) into semantically
identical datatypes used by other libraries. The conversion functions
make it easier for users of the transform library (tf) to work with
the datatype of their choice. Currently this package has support for
the Kinematics and Dynamics Library (KDL) and the Eigen matrix
library. This package is stable, and will get integrated into tf in
the next major release cycle (see roadmap)."
HOMEPAGE="http://www.ros.org/wiki/tf_conversions"
SRC_URI="https://github.com/ros-gbp/geometry-release/archive/release/lunar/tf_conversions/1.11.8-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/orocos_kdl
    ros-lunar/geometry_msgs
    ros-lunar/tf
    ros-lunar/python_orocos_kdl
    ros-lunar/kdl_conversions
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
    rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
}
