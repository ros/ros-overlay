# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="System tests for \`webots_ros2\` packages."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/${PN}/1.1.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/geometry_msgs )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/sensor_msgs )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/std_srvs )
	test? ( ros-galactic/tf2_ros )
	test? ( ros-galactic/webots_ros2_epuck )
	test? ( ros-galactic/webots_ros2_mavic )
	test? ( ros-galactic/webots_ros2_tesla )
	test? ( ros-galactic/webots_ros2_tiago )
	test? ( ros-galactic/webots_ros2_turtlebot )
	test? ( ros-galactic/webots_ros2_universal_robot )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-galactic/rclpy
	ros-galactic/ros2bag
	ros-galactic/rosbag2_storage_default_plugins
	ros-galactic/webots_ros2_driver
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
