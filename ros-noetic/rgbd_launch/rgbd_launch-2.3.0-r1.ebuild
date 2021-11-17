# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch files to open an RGBD device and load all nodelets to \
	 convert[...]"
HOMEPAGE="http://www.ros.org/wiki/rgbd_launch"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/2.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/depth_image_proc
	ros-noetic/image_proc
	ros-noetic/nodelet
	ros-noetic/tf2_ros
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
