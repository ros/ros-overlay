# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package defining actions for manipulation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/squirrel-project/squirrel_common-release/archive/release/indigo/squirrel_manipulation_msgs/0.0.24-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
	ros-indigo/squirrel_object_perception_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
