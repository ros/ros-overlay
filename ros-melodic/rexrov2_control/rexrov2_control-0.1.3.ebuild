# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The rexrov2_control package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uuvsimulator/rexrov2-release/archive/release/melodic/${PN}/0.1.3-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/gazebo_ros_control
	ros-melodic/uuv_control_cascaded_pid
	ros-melodic/uuv_thruster_manager
	ros-melodic/uuv_trajectory_control
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
