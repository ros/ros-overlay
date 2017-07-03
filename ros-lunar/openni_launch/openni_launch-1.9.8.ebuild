# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Launch files to open an OpenNI device and load all nodelets to 
	 convert raw"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/openni_launch-release/archive/release/lunar/openni_launch/1.9.8-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/nodelet
	ros-lunar/openni_camera
	ros-lunar/rgbd_launch
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

