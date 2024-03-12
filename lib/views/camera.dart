import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:poultry_disease/controller/scan_ctrl.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller){
           return controller.isCameraInitialized.value 
           ? CameraPreview(controller.cameraController)
           :const Center(child: Text('Preview Loading'),);
      }),

    );
  }
}