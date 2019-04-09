# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A metapackage to aggregate several packages."
HOMEPAGE="https://github.com/ros/metapackages"
SRC_URI="https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/${PN}/1.1.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry2
	ros-kinetic/joystick_drivers
	ros-kinetic/moveit_pr2
	ros-kinetic/perception
	ros-kinetic/perception_pcl
	ros-kinetic/pr2_apps
	ros-kinetic/pr2_calibration
	ros-kinetic/pr2_common
	ros-kinetic/pr2_common_actions
	ros-kinetic/pr2_controllers
	ros-kinetic/pr2_kinematics
	ros-kinetic/pr2_mechanism
	ros-kinetic/pr2_navigation
	ros-kinetic/ros_realtime
	ros-kinetic/warehouse_ros
	ros-kinetic/web_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
