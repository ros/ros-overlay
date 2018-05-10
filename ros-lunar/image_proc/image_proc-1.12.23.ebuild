# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Single image rectification and color processing."
HOMEPAGE="http://www.ros.org/wiki/image_proc"
SRC_URI="https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/${PN}/1.12.23-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/dynamic_reconfigure
	ros-lunar/image_geometry
	ros-lunar/image_transport
	ros-lunar/nodelet
	ros-lunar/nodelet_topic_tools
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	test? ( ros-lunar/camera_calibration_parsers )
	test? ( ros-lunar/rostest )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
