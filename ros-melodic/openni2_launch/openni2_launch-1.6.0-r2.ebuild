# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files to start the openni2_camera drivers using rgbd_launch."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/openni2_camera-release/archive/release/melodic/${PN}/1.6.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/depth_image_proc
	ros-melodic/image_proc
	ros-melodic/nodelet
	ros-melodic/openni2_camera
	ros-melodic/rgbd_launch
	ros-melodic/rospy
	ros-melodic/roswtf
	ros-melodic/tf
	dev-python/catkin_pkg
	sys-apps/usbutils
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
