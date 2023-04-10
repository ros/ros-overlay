# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="System tests for \`webots_ros2\` packages."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/${PN}/2023.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
	test? ( ros-foxy/sensor_msgs )
	test? ( ros-foxy/std_msgs )
	test? ( ros-foxy/std_srvs )
	test? ( ros-foxy/tf2_ros )
	test? ( ros-foxy/webots_ros2_epuck )
	test? ( ros-foxy/webots_ros2_mavic )
	test? ( ros-foxy/webots_ros2_tesla )
	test? ( ros-foxy/webots_ros2_tiago )
	test? ( ros-foxy/webots_ros2_turtlebot )
	test? ( ros-foxy/webots_ros2_universal_robot )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/rclpy
	ros-foxy/ros2bag
	ros-foxy/rosbag2_storage_default_plugins
	ros-foxy/webots_ros2_driver
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
