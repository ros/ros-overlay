# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Launch files to open an RGBD device and load all nodelets to 
	 convert raw d"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rgbd_launch-release/archive/release/lunar/rgbd_launch/2.2.2-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/depth_image_proc
	ros-lunar/image_proc
	ros-lunar/nodelet
	ros-lunar/tf2_ros
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

