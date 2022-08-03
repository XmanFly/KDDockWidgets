/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019-2022 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'TypeHelpers.dart';
import '../Bindings.dart';
import '../FinalizerHelpers.dart';

var _dylib = Library.instance().dylib;

class TitleBar_flutter extends View_flutter {
  TitleBar_flutter.fromCppPointer(var cppPointer, [var needsAutoDelete = false])
      : super.fromCppPointer(cppPointer, needsAutoDelete) {}
  TitleBar_flutter.init() : super.init() {}
  factory TitleBar_flutter.fromCache(var cppPointer,
      [needsAutoDelete = false]) {
    if (View.isCached(cppPointer)) {
      var instance = View.s_dartInstanceByCppPtr[cppPointer.address];
      if (instance != null) return instance as TitleBar_flutter;
    }
    return TitleBar_flutter.fromCppPointer(cppPointer, needsAutoDelete);
  } //TitleBar_flutter(KDDockWidgets::Controllers::TitleBar * controller, KDDockWidgets::View * parent)
  TitleBar_flutter(TitleBar? controller, {required View? parent})
      : super.init() {
    final voidstar_Func_voidstar_voidstar func = _dylib
        .lookup<ffi.NativeFunction<voidstar_Func_voidstar_voidstar_FFI>>(
            'c_KDDockWidgets__Views__TitleBar_flutter__constructor_TitleBar_View')
        .asFunction();
    thisCpp = func(controller == null ? ffi.nullptr : controller.thisCpp,
        parent == null ? ffi.nullptr : parent.thisCpp);
    View.s_dartInstanceByCppPtr[thisCpp.address] = this;
    registerCallbacks();
  }
  static void activateWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::activateWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.activateWindow();
  }

  static int close_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::close()! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.close();
    return result ? 1 : 0;
  }

  static void createPlatformWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::createPlatformWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.createPlatformWindow();
  }

  static int flags_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::flags() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.flags();
    return result;
  }

  static void free_impl_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::free_impl()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.free_impl();
  }

  static ffi.Pointer<void> geometry_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::geometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.geometry();
    return result.thisCpp;
  }

  static void grabMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::grabMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.grabMouse();
  }

  static int hasFocus_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::hasFocus() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.hasFocus();
    return result ? 1 : 0;
  }

  static void hide_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::hide()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.hide();
  }

  static void init_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::init()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.init();
  }

  static int isActiveWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isActiveWindow() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isActiveWindow();
    return result ? 1 : 0;
  } // isCloseButtonEnabled() const

  bool isCloseButtonEnabled() {
    final bool_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<bool_Func_voidstar_FFI>>(
            cFunctionSymbolName(977))
        .asFunction();
    return func(thisCpp) != 0;
  }

  static int isCloseButtonEnabled_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isCloseButtonEnabled() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isCloseButtonEnabled();
    return result ? 1 : 0;
  } // isCloseButtonVisible() const

  bool isCloseButtonVisible() {
    final bool_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<bool_Func_voidstar_FFI>>(
            cFunctionSymbolName(978))
        .asFunction();
    return func(thisCpp) != 0;
  }

  static int isCloseButtonVisible_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isCloseButtonVisible() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isCloseButtonVisible();
    return result ? 1 : 0;
  } // isFloatButtonVisible() const

  bool isFloatButtonVisible() {
    final bool_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<bool_Func_voidstar_FFI>>(
            cFunctionSymbolName(979))
        .asFunction();
    return func(thisCpp) != 0;
  }

  static int isFloatButtonVisible_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isFloatButtonVisible() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isFloatButtonVisible();
    return result ? 1 : 0;
  }

  static int isMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isMaximized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMaximized();
    return result ? 1 : 0;
  }

  static int isMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isMinimized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMinimized();
    return result ? 1 : 0;
  }

  static int isNull_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isNull() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isNull();
    return result ? 1 : 0;
  }

  static int isRootView_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isRootView() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isRootView();
    return result ? 1 : 0;
  }

  static int isVisible_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::isVisible() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isVisible();
    return result ? 1 : 0;
  }

  static ffi.Pointer<void> mapFromGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> globalPt) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::mapFromGlobal(QPoint globalPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapFromGlobal(QPoint.fromCppPointer(globalPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapTo_calledFromC(ffi.Pointer<void> thisCpp,
      ffi.Pointer<void>? parent, ffi.Pointer<void> pos) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::mapTo(KDDockWidgets::View * parent, QPoint pos) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapTo(
        View.fromCppPointer(parent), QPoint.fromCppPointer(pos));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapToGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> localPt) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::mapToGlobal(QPoint localPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapToGlobal(QPoint.fromCppPointer(localPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> maxSizeHint_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::maxSizeHint() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.maxSizeHint();
    return result.thisCpp;
  }

  static ffi.Pointer<void> maximumSize_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::maximumSize() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.maximumSize();
    return result.thisCpp;
  }

  static ffi.Pointer<void> minSize_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::minSize() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.minSize();
    return result.thisCpp;
  }

  static int minimumHeight_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::minimumHeight() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.minimumHeight();
    return result;
  }

  static int minimumWidth_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::minimumWidth() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.minimumWidth();
    return result;
  }

  static void move_2_calledFromC(ffi.Pointer<void> thisCpp, int x, int y) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::move(int x, int y)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.move_2(x, y);
  }

  static ffi.Pointer<void> normalGeometry_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::normalGeometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.normalGeometry();
    return result.thisCpp;
  }

  static ffi.Pointer<void> objectName_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::objectName() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.objectName();
    return result.thisCpp;
  }

  static int onResize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> newSize) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::onResize(QSize newSize)! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.onResize(QSize.fromCppPointer(newSize));
    return result ? 1 : 0;
  }

  static void raise_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::raise()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raise();
  }

  static void raiseAndActivate_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::raiseAndActivate()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseAndActivate();
  }

  static void releaseKeyboard_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::releaseKeyboard()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseKeyboard();
  }

  static void releaseMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::releaseMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseMouse();
  }

  static void setCursor_calledFromC(ffi.Pointer<void> thisCpp, int shape) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setCursor(Qt::CursorShape shape)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setCursor(shape);
  }

  static void setFixedHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setFixedHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedHeight(h);
  }

  static void setFixedWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setFixedWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedWidth(w);
  }

  static void setGeometry_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> arg__1) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setGeometry(QRect arg__1)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setGeometry(QRect.fromCppPointer(arg__1));
  }

  static void setHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setHeight(h);
  }

  static void setMaximumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setMaximumSize(QSize sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMaximumSize(QSize.fromCppPointer(sz));
  }

  static void setMinimumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setMinimumSize(QSize sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMinimumSize(QSize.fromCppPointer(sz));
  }

  static void setMouseTracking_calledFromC(
      ffi.Pointer<void> thisCpp, int enable) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setMouseTracking(bool enable)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMouseTracking(enable != 0);
  }

  static void setObjectName_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? name) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setObjectName(const QString & name)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setObjectName(QString.fromCppPointer(name).toDartString());
  }

  static void setParent_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? parent) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setParent(KDDockWidgets::View * parent)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setParent(View.fromCppPointer(parent));
  }

  static void setSize_2_calledFromC(ffi.Pointer<void> thisCpp, int w, int h) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setSize(int w, int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setSize_2(w, h);
  }

  static void setVisible_calledFromC(ffi.Pointer<void> thisCpp, int visible) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setVisible(bool visible)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setVisible(visible != 0);
  }

  static void setWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWidth(w);
  }

  static void setWindowOpacity_calledFromC(
      ffi.Pointer<void> thisCpp, double v) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setWindowOpacity(double v)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowOpacity(v);
  }

  static void setWindowTitle_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? title) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setWindowTitle(const QString & title)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowTitle(QString.fromCppPointer(title).toDartString());
  }

  static void setZOrder_calledFromC(ffi.Pointer<void> thisCpp, int arg__1) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::setZOrder(int arg__1)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setZOrder(arg__1);
  }

  static void show_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::show()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.show();
  }

  static void showMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::showMaximized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMaximized();
  }

  static void showMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::showMinimized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMinimized();
  }

  static void showNormal_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::showNormal()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showNormal();
  }

  static ffi.Pointer<void> sizeHint_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::sizeHint() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.sizeHint();
    return result.thisCpp;
  }

  static void update_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance =
        View.s_dartInstanceByCppPtr[thisCpp.address] as TitleBar_flutter;
    if (dartInstance == null) {
      print(
          "Dart instance not found for TitleBar_flutter::update()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.update();
  }

  void release() {
    final void_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>(
            'c_KDDockWidgets__Views__TitleBar_flutter__destructor')
        .asFunction();
    func(thisCpp);
  }

  String cFunctionSymbolName(int methodId) {
    switch (methodId) {
      case 850:
        return "c_KDDockWidgets__Views__TitleBar_flutter__activateWindow";
      case 858:
        return "c_KDDockWidgets__Views__TitleBar_flutter__close";
      case 861:
        return "c_KDDockWidgets__Views__TitleBar_flutter__createPlatformWindow";
      case 866:
        return "c_KDDockWidgets__Views__TitleBar_flutter__flags";
      case 868:
        return "c_KDDockWidgets__Views__TitleBar_flutter__free_impl";
      case 870:
        return "c_KDDockWidgets__Views__TitleBar_flutter__geometry";
      case 872:
        return "c_KDDockWidgets__Views__TitleBar_flutter__grabMouse";
      case 875:
        return "c_KDDockWidgets__Views__TitleBar_flutter__hasFocus";
      case 877:
        return "c_KDDockWidgets__Views__TitleBar_flutter__hide";
      case 880:
        return "c_KDDockWidgets__Views__TitleBar_flutter__init";
      case 882:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isActiveWindow";
      case 977:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isCloseButtonEnabled";
      case 978:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isCloseButtonVisible";
      case 979:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isFloatButtonVisible";
      case 883:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isMaximized";
      case 884:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isMinimized";
      case 885:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isNull";
      case 886:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isRootView";
      case 887:
        return "c_KDDockWidgets__Views__TitleBar_flutter__isVisible";
      case 888:
        return "c_KDDockWidgets__Views__TitleBar_flutter__mapFromGlobal_QPoint";
      case 889:
        return "c_KDDockWidgets__Views__TitleBar_flutter__mapTo_View_QPoint";
      case 890:
        return "c_KDDockWidgets__Views__TitleBar_flutter__mapToGlobal_QPoint";
      case 891:
        return "c_KDDockWidgets__Views__TitleBar_flutter__maxSizeHint";
      case 892:
        return "c_KDDockWidgets__Views__TitleBar_flutter__maximumSize";
      case 893:
        return "c_KDDockWidgets__Views__TitleBar_flutter__minSize";
      case 894:
        return "c_KDDockWidgets__Views__TitleBar_flutter__minimumHeight";
      case 895:
        return "c_KDDockWidgets__Views__TitleBar_flutter__minimumWidth";
      case 897:
        return "c_KDDockWidgets__Views__TitleBar_flutter__move_int_int";
      case 898:
        return "c_KDDockWidgets__Views__TitleBar_flutter__normalGeometry";
      case 899:
        return "c_KDDockWidgets__Views__TitleBar_flutter__objectName";
      case 900:
        return "c_KDDockWidgets__Views__TitleBar_flutter__onResize_QSize";
      case 903:
        return "c_KDDockWidgets__Views__TitleBar_flutter__raise";
      case 904:
        return "c_KDDockWidgets__Views__TitleBar_flutter__raiseAndActivate";
      case 906:
        return "c_KDDockWidgets__Views__TitleBar_flutter__releaseKeyboard";
      case 907:
        return "c_KDDockWidgets__Views__TitleBar_flutter__releaseMouse";
      case 911:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setCursor_CursorShape";
      case 912:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setFixedHeight_int";
      case 913:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setFixedWidth_int";
      case 914:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setGeometry_QRect";
      case 915:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setHeight_int";
      case 916:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setMaximumSize_QSize";
      case 917:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setMinimumSize_QSize";
      case 918:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setMouseTracking_bool";
      case 919:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setObjectName_QString";
      case 920:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setParent_View";
      case 922:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setSize_int_int";
      case 923:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setVisible_bool";
      case 924:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setWidth_int";
      case 925:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setWindowOpacity_double";
      case 926:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setWindowTitle_QString";
      case 927:
        return "c_KDDockWidgets__Views__TitleBar_flutter__setZOrder_int";
      case 928:
        return "c_KDDockWidgets__Views__TitleBar_flutter__show";
      case 929:
        return "c_KDDockWidgets__Views__TitleBar_flutter__showMaximized";
      case 930:
        return "c_KDDockWidgets__Views__TitleBar_flutter__showMinimized";
      case 931:
        return "c_KDDockWidgets__Views__TitleBar_flutter__showNormal";
      case 933:
        return "c_KDDockWidgets__Views__TitleBar_flutter__sizeHint";
      case 935:
        return "c_KDDockWidgets__Views__TitleBar_flutter__update";
    }
    return super.cFunctionSymbolName(methodId);
  }

  static String methodNameFromId(int methodId) {
    switch (methodId) {
      case 850:
        return "activateWindow";
      case 858:
        return "close";
      case 861:
        return "createPlatformWindow";
      case 866:
        return "flags";
      case 868:
        return "free_impl";
      case 870:
        return "geometry";
      case 872:
        return "grabMouse";
      case 875:
        return "hasFocus";
      case 877:
        return "hide";
      case 880:
        return "init";
      case 882:
        return "isActiveWindow";
      case 977:
        return "isCloseButtonEnabled";
      case 978:
        return "isCloseButtonVisible";
      case 979:
        return "isFloatButtonVisible";
      case 883:
        return "isMaximized";
      case 884:
        return "isMinimized";
      case 885:
        return "isNull";
      case 886:
        return "isRootView";
      case 887:
        return "isVisible";
      case 888:
        return "mapFromGlobal";
      case 889:
        return "mapTo";
      case 890:
        return "mapToGlobal";
      case 891:
        return "maxSizeHint";
      case 892:
        return "maximumSize";
      case 893:
        return "minSize";
      case 894:
        return "minimumHeight";
      case 895:
        return "minimumWidth";
      case 897:
        return "move_2";
      case 898:
        return "normalGeometry";
      case 899:
        return "objectName";
      case 900:
        return "onResize";
      case 903:
        return "raise";
      case 904:
        return "raiseAndActivate";
      case 906:
        return "releaseKeyboard";
      case 907:
        return "releaseMouse";
      case 911:
        return "setCursor";
      case 912:
        return "setFixedHeight";
      case 913:
        return "setFixedWidth";
      case 914:
        return "setGeometry";
      case 915:
        return "setHeight";
      case 916:
        return "setMaximumSize";
      case 917:
        return "setMinimumSize";
      case 918:
        return "setMouseTracking";
      case 919:
        return "setObjectName";
      case 920:
        return "setParent";
      case 922:
        return "setSize_2";
      case 923:
        return "setVisible";
      case 924:
        return "setWidth";
      case 925:
        return "setWindowOpacity";
      case 926:
        return "setWindowTitle";
      case 927:
        return "setZOrder";
      case 928:
        return "show";
      case 929:
        return "showMaximized";
      case 930:
        return "showMinimized";
      case 931:
        return "showNormal";
      case 933:
        return "sizeHint";
      case 935:
        return "update";
    }
    throw Error();
  }

  void registerCallbacks() {
    assert(thisCpp != null);
    final RegisterMethodIsReimplementedCallback registerCallback = _dylib
        .lookup<ffi.NativeFunction<RegisterMethodIsReimplementedCallback_FFI>>(
            'c_KDDockWidgets__Views__TitleBar_flutter__registerVirtualMethodCallback')
        .asFunction();
    final callback850 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.activateWindow_calledFromC);
    registerCallback(thisCpp, callback850, 850);
    const callbackExcept858 = 0;
    final callback858 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.close_calledFromC, callbackExcept858);
    registerCallback(thisCpp, callback858, 858);
    final callback861 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View.createPlatformWindow_calledFromC);
    registerCallback(thisCpp, callback861, 861);
    const callbackExcept866 = 0;
    final callback866 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        View_flutter.flags_calledFromC, callbackExcept866);
    registerCallback(thisCpp, callback866, 866);
    final callback868 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.free_impl_calledFromC);
    registerCallback(thisCpp, callback868, 868);
    final callback870 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.geometry_calledFromC);
    registerCallback(thisCpp, callback870, 870);
    final callback872 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.grabMouse_calledFromC);
    registerCallback(thisCpp, callback872, 872);
    const callbackExcept875 = 0;
    final callback875 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.hasFocus_calledFromC, callbackExcept875);
    registerCallback(thisCpp, callback875, 875);
    final callback877 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.hide_calledFromC);
    registerCallback(thisCpp, callback877, 877);
    final callback880 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        TitleBar_flutter.init_calledFromC);
    registerCallback(thisCpp, callback880, 880);
    const callbackExcept882 = 0;
    final callback882 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.isActiveWindow_calledFromC, callbackExcept882);
    registerCallback(thisCpp, callback882, 882);
    const callbackExcept977 = 0;
    final callback977 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        TitleBar_flutter.isCloseButtonEnabled_calledFromC, callbackExcept977);
    registerCallback(thisCpp, callback977, 977);
    const callbackExcept978 = 0;
    final callback978 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        TitleBar_flutter.isCloseButtonVisible_calledFromC, callbackExcept978);
    registerCallback(thisCpp, callback978, 978);
    const callbackExcept979 = 0;
    final callback979 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        TitleBar_flutter.isFloatButtonVisible_calledFromC, callbackExcept979);
    registerCallback(thisCpp, callback979, 979);
    const callbackExcept883 = 0;
    final callback883 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.isMaximized_calledFromC, callbackExcept883);
    registerCallback(thisCpp, callback883, 883);
    const callbackExcept884 = 0;
    final callback884 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.isMinimized_calledFromC, callbackExcept884);
    registerCallback(thisCpp, callback884, 884);
    const callbackExcept885 = 0;
    final callback885 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View.isNull_calledFromC, callbackExcept885);
    registerCallback(thisCpp, callback885, 885);
    const callbackExcept886 = 0;
    final callback886 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.isRootView_calledFromC, callbackExcept886);
    registerCallback(thisCpp, callback886, 886);
    const callbackExcept887 = 0;
    final callback887 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        View_flutter.isVisible_calledFromC, callbackExcept887);
    registerCallback(thisCpp, callback887, 887);
    final callback888 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            View_flutter.mapFromGlobal_calledFromC);
    registerCallback(thisCpp, callback888, 888);
    final callback889 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_voidstar_FFI>(
            View_flutter.mapTo_calledFromC);
    registerCallback(thisCpp, callback889, 889);
    final callback890 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            View_flutter.mapToGlobal_calledFromC);
    registerCallback(thisCpp, callback890, 890);
    final callback891 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.maxSizeHint_calledFromC);
    registerCallback(thisCpp, callback891, 891);
    final callback892 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.maximumSize_calledFromC);
    registerCallback(thisCpp, callback892, 892);
    final callback893 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.minSize_calledFromC);
    registerCallback(thisCpp, callback893, 893);
    const callbackExcept894 = 0;
    final callback894 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        View.minimumHeight_calledFromC, callbackExcept894);
    registerCallback(thisCpp, callback894, 894);
    const callbackExcept895 = 0;
    final callback895 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        View.minimumWidth_calledFromC, callbackExcept895);
    registerCallback(thisCpp, callback895, 895);
    final callback897 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            View_flutter.move_2_calledFromC);
    registerCallback(thisCpp, callback897, 897);
    final callback898 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.normalGeometry_calledFromC);
    registerCallback(thisCpp, callback898, 898);
    final callback899 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.objectName_calledFromC);
    registerCallback(thisCpp, callback899, 899);
    const callbackExcept900 = 0;
    final callback900 =
        ffi.Pointer.fromFunction<bool_Func_voidstar_voidstar_FFI>(
            View.onResize_calledFromC, callbackExcept900);
    registerCallback(thisCpp, callback900, 900);
    final callback903 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.raise_calledFromC);
    registerCallback(thisCpp, callback903, 903);
    final callback904 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.raiseAndActivate_calledFromC);
    registerCallback(thisCpp, callback904, 904);
    final callback906 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.releaseKeyboard_calledFromC);
    registerCallback(thisCpp, callback906, 906);
    final callback907 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.releaseMouse_calledFromC);
    registerCallback(thisCpp, callback907, 907);
    final callback911 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setCursor_calledFromC);
    registerCallback(thisCpp, callback911, 911);
    final callback912 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setFixedHeight_calledFromC);
    registerCallback(thisCpp, callback912, 912);
    final callback913 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setFixedWidth_calledFromC);
    registerCallback(thisCpp, callback913, 913);
    final callback914 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setGeometry_calledFromC);
    registerCallback(thisCpp, callback914, 914);
    final callback915 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setHeight_calledFromC);
    registerCallback(thisCpp, callback915, 915);
    final callback916 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setMaximumSize_calledFromC);
    registerCallback(thisCpp, callback916, 916);
    final callback917 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setMinimumSize_calledFromC);
    registerCallback(thisCpp, callback917, 917);
    final callback918 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            View_flutter.setMouseTracking_calledFromC);
    registerCallback(thisCpp, callback918, 918);
    final callback919 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setObjectName_calledFromC);
    registerCallback(thisCpp, callback919, 919);
    final callback920 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setParent_calledFromC);
    registerCallback(thisCpp, callback920, 920);
    final callback922 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            View_flutter.setSize_2_calledFromC);
    registerCallback(thisCpp, callback922, 922);
    final callback923 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            View_flutter.setVisible_calledFromC);
    registerCallback(thisCpp, callback923, 923);
    final callback924 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setWidth_calledFromC);
    registerCallback(thisCpp, callback924, 924);
    final callback925 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Double_FFI>(
            View_flutter.setWindowOpacity_calledFromC);
    registerCallback(thisCpp, callback925, 925);
    final callback926 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            View_flutter.setWindowTitle_calledFromC);
    registerCallback(thisCpp, callback926, 926);
    final callback927 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            View_flutter.setZOrder_calledFromC);
    registerCallback(thisCpp, callback927, 927);
    final callback928 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.show_calledFromC);
    registerCallback(thisCpp, callback928, 928);
    final callback929 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.showMaximized_calledFromC);
    registerCallback(thisCpp, callback929, 929);
    final callback930 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.showMinimized_calledFromC);
    registerCallback(thisCpp, callback930, 930);
    final callback931 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.showNormal_calledFromC);
    registerCallback(thisCpp, callback931, 931);
    final callback933 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        View_flutter.sizeHint_calledFromC);
    registerCallback(thisCpp, callback933, 933);
    final callback935 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        View_flutter.update_calledFromC);
    registerCallback(thisCpp, callback935, 935);
  }
}
