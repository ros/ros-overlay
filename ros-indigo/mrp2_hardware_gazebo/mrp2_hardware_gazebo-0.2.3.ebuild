# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo plugin of MRP2 robot hardware used in simulation."
HOMEPAGE="http://wiki.ros.org/mrp2_hardware_gazebo"
SRC_URI="https://github.com/milvusrobotics/mrp2_simulator-release/archive/release/indigo/mrp2_hardware_gazebo/0.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_toolbox
	ros-indigo/gazebo_ros_control
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
