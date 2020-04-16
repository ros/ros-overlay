# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files for freenect_camera to produce rectified, registered\
	or d[...]"
HOMEPAGE="http://ros.org/wiki/freenect_launch"
SRC_URI="https://github.com/ros-drivers-gbp/freenect_stack-release/archive/release/melodic/${PN}/0.4.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/freenect_camera
	ros-melodic/image_proc
	ros-melodic/nodelet
	ros-melodic/rgbd_launch
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
