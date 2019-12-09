import 'package:camera/camera.dart';

class CameraUtils {
  CameraDescription selectedCamera;
  ResolutionPreset selectedResolution;
  CameraController cameraController;

  Future<List> listCameras() async => await availableCameras();

  void selectCamera(givenCamera) {
    selectedCamera = givenCamera;
  }

  void initializeController() {
    cameraController = CameraController(selectedCamera, selectedResolution);
    cameraController.initialize();
  }
}
