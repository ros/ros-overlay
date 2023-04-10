# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="MassRobotics AMR Interop Sender"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/foxy/${PN}/1.0.0-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="3-Clause-BSD-License"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclpy
	ros-foxy/tf2
	ros-foxy/tf2_bullet
	ros-foxy/tf2_eigen
	ros-foxy/tf2_eigen_kdl
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_kdl
	ros-foxy/tf2_msgs
	ros-foxy/tf2_py
	ros-foxy/tf2_ros
	ros-foxy/tf2_sensor_msgs
	ros-foxy/tf2_tools
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_pep257 )
	dev-python/websockets
	test? ( dev-python/jsonschema )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
