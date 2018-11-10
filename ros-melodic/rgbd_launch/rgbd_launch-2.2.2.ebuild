# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files to open an RGBD device and load all nodelets to \
	 convert[...]"
HOMEPAGE="http://www.ros.org/wiki/rgbd_launch"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/2.2.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/depth_image_proc
	ros-melodic/image_proc
	ros-melodic/nodelet
	ros-melodic/tf2_ros
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
