# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Visualization launch files and RViz configurations for Leo Rover"
HOMEPAGE="http://wiki.ros.org/leo_viz"
SRC_URI="https://github.com/ros2-gbp/leo_desktop-release/archive/release/humble/${PN}/1.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/joint_state_publisher
	ros-humble/joint_state_publisher_gui
	ros-humble/leo_description
	ros-humble/rviz2
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
