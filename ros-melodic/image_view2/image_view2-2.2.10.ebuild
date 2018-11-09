# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A simple viewer for ROS image topics with draw-on features"
HOMEPAGE="http://ros.org/wiki/image_view2"
SRC_URI="https://github.com/tork-a/jsk_common-release/archive/release/melodic/${PN}/2.2.10-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/image_view
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	test? ( dev-python/numpy )
	test? ( sci-libs/scipy )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
