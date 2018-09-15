# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files to open an OpenNI device and load all nodelets to \
	 conve[...]"
HOMEPAGE="http://www.ros.org/wiki/openni_launch"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/lunar/${PN}/1.11.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

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

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
