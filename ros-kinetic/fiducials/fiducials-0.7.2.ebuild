# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Localization using fiducial markers"
HOMEPAGE="http://wiki.ros.org/fiducials"
SRC_URI="https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducials/0.7.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/aruco_detect
	ros-kinetic/fiducial_detect
	ros-kinetic/fiducial_lib
	ros-kinetic/fiducial_msgs
	ros-kinetic/fiducial_pose
	ros-kinetic/fiducial_slam
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

