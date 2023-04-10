# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="An example package with MoveIt2 configurations for UR robots."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/${PN}/2.0.2-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/moveit_kinematics
	ros-foxy/moveit_planners_ompl
	ros-foxy/moveit_ros_visualization
	ros-foxy/rviz2
	ros-foxy/urdf
	ros-foxy/xacro
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
