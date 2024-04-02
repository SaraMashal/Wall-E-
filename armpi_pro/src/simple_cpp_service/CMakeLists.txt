cmake_minimum_required(VERSION 3.0.2)
project(simple_cpp_service)

# Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg message_generation)
 
## Declare ROS messages and services
add_service_files(DIRECTORY srv FILES SimpleService.srv)
 
## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)
 
## Declare a catkin package
catkin_package(CATKIN_DEPENDS roscpp rospy std_msgs )
include_directories(
  ${catkin_INCLUDE_DIRS}
)
add_executable(simple_cpp_service_node scripts/simple_cpp_service_node.cpp)
target_link_libraries(simple_cpp_service_node ${catkin_LIBRARIES})
add_dependencies(simple_cpp_service_node ${simple_cpp_service_node_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

