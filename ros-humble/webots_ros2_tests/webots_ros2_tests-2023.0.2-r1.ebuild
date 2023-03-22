# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="System tests for \`webots_ros2\` packages."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/${PN}/2023.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/sensor_msgs )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/std_srvs )
	test? ( ros-humble/tf2_ros )
	test? ( ros-humble/webots_ros2_epuck )
	test? ( ros-humble/webots_ros2_mavic )
	test? ( ros-humble/webots_ros2_tesla )
	test? ( ros-humble/webots_ros2_tiago )
	test? ( ros-humble/webots_ros2_turtlebot )
	test? ( ros-humble/webots_ros2_universal_robot )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-humble/rclpy
	ros-humble/ros2bag
	ros-humble/rosbag2_storage_default_plugins
	ros-humble/webots_ros2_driver
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
