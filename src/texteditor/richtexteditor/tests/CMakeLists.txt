set(richtexteditor_gui_SRCS richtexteditor_gui.cpp)
add_executable(richtexteditor_gui ${richtexteditor_gui_SRCS})
target_link_libraries(richtexteditor_gui
  KF5::PimTextEdit KF5::CoreAddons Qt::Widgets KF5::I18n
)

