# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS to InOrbit topic republisher"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inorbit-ai/ros_inorbit_samples-release/archive/release/noetic/${PN}/0.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/std_msgs
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/rospkg
	dev-python/pyyaml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
