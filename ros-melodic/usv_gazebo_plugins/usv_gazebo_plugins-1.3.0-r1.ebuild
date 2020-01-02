# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo plugins for simulating Unmanned Surface Vehicles\
	Originaly copi[...]"
HOMEPAGE="http://wiki.ros.org/usv_gazebo_plugins"
SRC_URI="https://github.com/ros-gbp/vrx-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_dev
	ros-melodic/gazebo_ros
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/wave_gazebo_plugins
	ros-melodic/xacro
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
