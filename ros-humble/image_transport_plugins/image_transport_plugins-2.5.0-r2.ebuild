# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A set of plugins for publishing and subscribing to sensor_msgs/Image topics[...]"
HOMEPAGE="http://www.ros.org/wiki/image_transport_plugins"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.5.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/compressed_depth_image_transport
	ros-humble/compressed_image_transport
	ros-humble/theora_image_transport
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
