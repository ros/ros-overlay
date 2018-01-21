# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Flips the image of Care-O-bots kinect in dependence of the viewing directio[...]"
HOMEPAGE="http://wiki.ros.org/cob_image_flip"
SRC_URI="https://github.com/ipa320/cob_perception_common-release/archive/release/indigo/${PN}/0.6.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_perception_msgs
	ros-indigo/cv_bridge
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/nodelet
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/stereo_msgs
	ros-indigo/tf
	dev-libs/boost
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
