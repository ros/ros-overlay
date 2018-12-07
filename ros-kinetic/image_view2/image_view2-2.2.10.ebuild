# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A simple viewer for ROS image topics with draw-on features"
HOMEPAGE="http://ros.org/wiki/image_view2"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/kinetic/${PN}/2.2.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/image_transport
	ros-kinetic/image_view
	ros-kinetic/message_filters
	ros-kinetic/message_runtime
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	test? ( dev-python/numpy )
	test? ( sci-libs/scipy )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
